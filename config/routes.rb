MushikagoManagementConsole::Application.routes.draw do
  match '/signin' => 'sessions#create'
  match '/signout' => 'sessions#destroy'

  root :to => 'sessions#new'

  namespace :mitsubachi do
    root :to => 'projects#index'
    resources :projects
    match '/projects/:project_id/resources' => 'resources#list'
  end

#  match ':controller(/:action(/:id))(.:format)'
end
