Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks], controllers: {registrations: "registrations", sessions: "sessions"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/auth/allUsers', to: 'user#allUsers'
  get '/auth/userById/:id', to: 'user#findUserById'

  resources :users
  wash_out :wsusers
end
