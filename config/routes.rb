Rails.application.routes.draw do

  root 'pages#home'
  get '/home', to: 'pages#home'
  get '/workshops', to: 'pages#workshops'
  get '/speakers', to: 'pages#speakers'
  get '/registration', to: 'pages#registration'
  get '/info', to: 'pages#info'
  get '/login', to: 'pages#login'
  get '/logout', to: 'pages#logout'
  get '/afterparty', to: 'pages#afterparty'
  post '/authenticate', to: 'pages#authenticate'
end
