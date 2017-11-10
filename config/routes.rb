Rails.application.routes.draw do
  resources :superpowers, only: [:index, :show]
  get "superheroes/search", to: "superheroes#search"
  resources :superheroes, only: [:index, :show, :new, :create]



end
