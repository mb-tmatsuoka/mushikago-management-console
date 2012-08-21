MitsubachiConsole::Application.routes.draw do
  match '/signin' => 'sessions#create'
  match '/signout' => 'sessions#destroy'

  root :to => 'sessions#new'

  match ':controller(/:action(/:id))(.:format)'
end
