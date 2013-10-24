Pokerlogger::Application.routes.draw do
  root to: 'sessions#index'
  
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

  get 'users' => 'users#index'

  # New User
  get 'users/new' => 'users#new'

  # Create new session
  post 'users' => 'users#create'

  # Show a user according to it's ID
  get 'users/:id' => 'users#show'

  get 'users/signin' => 'users#update'

  # New Authentication
  get 'authentications/new' => 'authentications#new'

  # Create Authentication
  post 'authentications' => 'authentications#create'

end
