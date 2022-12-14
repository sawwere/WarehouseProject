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

end
