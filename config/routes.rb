Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#index"

  get "/show_history", to: "operation#history"
  get "/show_remains", to: "goods_wh#remains"
  get "/show_favourites", to: "favourite#favourite"
  get "/show_info", to: "agent#info"

  get "/add_wh", to: "warehouse#add_warehouse"
  post "/create_wh", to: "warehouse#add_wh"

  get "/add_good", to: "good#add_good"
  post "/create_good", to: "good#create_good"

  resources :agent
  get '/register', to: 'register#new'
  post '/register', to: 'register#create'

  get '/login', to: 'login#new'
  post '/login', to: 'login#create'
  get '/logout', to: 'login#destroy'
  resources :good
  resources :warehouse



end
