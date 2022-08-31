Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Actor paths
  get "actors/:id" => "actors#show"

  # Movie paths
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
end
