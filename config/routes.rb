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
    post "/sodia" => "sodia#create"
    get "/showsodia" => "sodia#show"
  end

  root 'application#index'
  get '/*path', to: 'application#index' 
  #   get "/photos" => "photos#index"
  # end
  
end
