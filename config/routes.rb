Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    get "/weights" => "weights#index"
    post "/weights" => "weights#create"
    get "/sodia" => "sodia#index"
  end
  #   get "/photos" => "photos#index"
  # end
  
end
