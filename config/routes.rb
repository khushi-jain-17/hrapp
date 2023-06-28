Rails.application.routes.draw do
  root 'home#index'
  resources :employees
  #root 'pages#contact_us'
  get 'about' => 'pages#about_us'
  get 'contact'=> 'pages#contact_us'
  get 'privacy-policy' => 'pages#privacy_policy'
  get 'terms' => 'pages#terms'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  #get 'home/index'
  
   #get '/home' => 'home#index'
end

