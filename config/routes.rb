Rails.application.routes.draw do
  resources :superheroes, only: [:index, :show, :new, :create]
  resources :superpowers, only: [:index, :show]

  get '/search' => 'superheroes#search'
end
