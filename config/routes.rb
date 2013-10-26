TeamDashboard::Application.routes.draw do

  namespace :api do
    resources :dashboards do
      resources :widgets
    end

    resource :system

    resources :datapoints_targets, :only => :index
    match "data_sources/:kind" => "data_sources#index"
  end

  match "dashboards"     => "layout#index"
  match "dashboards/:id" => "layout#index"
  match "about"          => "layout#index"

  root :to => 'layout#index'
end
