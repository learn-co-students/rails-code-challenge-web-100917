Rails.application.routes.draw do
  resources :superpowers, only: [:index, :show]
  resources :superheroes, only: [:index, :new, :create, :show]

  root 'superheroes#index'

  get '/search', to: 'superheroes#index'

end
