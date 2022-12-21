Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#index"

  get "/manage_operations", to: "operation#history"
  post "/manage_operations", to: "operation#create"

  get "/show_remains", to: "goods_wh#remains"
  get "/show_info", to: "agent#info"

  get "/manage_warehouse", to: "warehouse#list"
  post "/manage_warehouse", to: "warehouse#create"

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

  post '/change_town', to: 'agent#change_town'
  post '/change_phone', to: 'agent#change_phone'

  post '/create_favourites', to: 'favourite#create_favourites'

end
