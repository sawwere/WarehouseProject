Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  get "/show_history", to: "warehouse#history"
  get "/show_remains", to: "warehouse#remains"
  get "/show_favourites", to: "favourite#favourite"
  get "/show_info", to: "agent#info"

end
