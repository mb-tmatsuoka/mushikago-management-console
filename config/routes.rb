MushikagoManagementConsole::Application.routes.draw do
  match '/signin' => 'sessions#create'
  match '/signout' => 'sessions#destroy'

  root :to => 'sessions#new'

  namespace :mitsubachi do
    resources :projects
  end

#  match ':controller(/:action(/:id))(.:format)'
end
