Rails.application.routes.draw do
  resources :superpowers, only: [:index, :show]
  resources :superheroes, only: [:index, :new, :create, :show]

  get '/search' => 'superheroes#search'

end
