Rails.application.routes.draw do
  # Users
  post '/users/create', to: 'users#create'
  post '/users/login', to: 'users#login'
  post '/users/update_password', to: 'users#update_passsword'
  post '/users/show_all', to: 'users#show_all'
end
