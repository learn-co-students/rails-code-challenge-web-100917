Rails.application.routes.draw do
  resources :superpowers, only: [:index]
  resources :superheroes, only: [:index, :create, :new]
  get '/superhero/:id', to: 'superheroes#show', as: 'superhero'
  get '/superpower/:id', to: 'superpowers#show', as: 'superpower'


end
