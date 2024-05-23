Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # GET all lists
  get "lists", to: "lists#index"

  #GET (one)
  get "lists/:id", to: "lists#show"

  # GET "lists/new"
  get "lists/new", to: "lists#new"

  # POST "lists"
  post "lists", to: "lists#create"
end
