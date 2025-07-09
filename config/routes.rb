Rails.application.routes.draw do
  get '/products', to: 'products#index'
  get '/products/new', to: 'products#new'
  get 'products/:id/edit', to: 'products#edit'
  delete '/products/:id', to: 'products#destroy'
  get '/products/:id', to: 'products#show'
  post '/products', to: 'products#create'
  patch '/products/:id' ,to: 'products#update'

  root 'products#index'
end