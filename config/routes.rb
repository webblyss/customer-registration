Rails.application.routes.draw do
  root 'home#index'
  get '/customer', to: 'home#customer', as: 'customer'
  get '/about', to: 'home#about', as: 'about'
  
  post '/submit', to: 'home#addCustomer'
  delete 'customer/:id', to: 'home#delete', as: 'delete'




  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
