Pokerlogger::Application.routes.draw do
  get 'sessions' => 'sessions#index'

  #Create empty session to fill in
  get 'sessions/new' => 'sessions#new'

  # Show a single session according to it's ID
  get 'sessions/:id' => 'sessions#show'

  get 'sessions/:id/edit' => 'sessions#edit'

  # Creates a new session
  post 'sessions' => 'sessions#create'

  # Delete a session
  delete 'sessions/:id' => 'sessions#destroy'

  # Update a session
  put 'sessions/:id' => 'sessions#update'

end
