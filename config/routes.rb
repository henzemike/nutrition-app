Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do
    get "/users/me" => "users#profile"
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/ingredients" => "ingredients#index"
    get "/ingredients/:id" => "ingredients#show"


    get "/meals" => "meals#index"
    post "/meals" => "meals#create"
    get "/meals/:id" => "meals#show"
    patch "/meals/:id" => "meals#update"
    delete "/meals/:id" => "meals#destroy"

    post "/sessions" => "sessions#create"

  end

end
