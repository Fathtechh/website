Rails.application.routes.draw do
  get 'postingan/index'
  get '/index', to: 'home#index'
  get '/postingan', to: 'postingan#index'
  get '/artikel', to: 'home#artikel'
  get '/about', to: 'home#about'
  get '/', to: 'home#index'
  get '/postingan/detail/:id', to: 'postingan#detail'
  get '/postingan/input', to: 'postingan#input'
  post'/postingan/create', to: 'postingan#create'

  get '/postingan/edit/:id', to: 'postingan#edit'
  post '/postingan/update/:id', to: 'postingan#update'
  get '/postingan/delete/:id', to: 'postingan#delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
end
