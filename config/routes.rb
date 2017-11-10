Rails.application.routes.draw do

  get "/superheroes", to: "superheroes#index", as: "superheroes"
  get "/superheroes/new", to: "superheroes#new", as: "new_superheroes"
  post "/superheroes", to: "superheroes#create"
  get "/superheroes/:id", to: "superheroes#show", as: "superhero"
  get "/superpowers", to: "superpowers#index", as: "superpowers"
  get "/superpowers/new", to: "superheroes#new", as: "new_superpowers"
  post "/superpowers", to: "superpowers#create"
  get "/superpowers/:id", to: "superheroes#show", as: "superhero"

end
