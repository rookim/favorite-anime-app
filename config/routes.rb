Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/anime" => "animes#index"
  post "/anime" => "animes#create"
  get "/anime/:id" => "animes#show"
  patch "/anime/:id" => "animes#update"
  delete "/anime/:id" => "animes#destroy"
end
