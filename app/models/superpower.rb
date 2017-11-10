class Superpower < ApplicationRecord
  has_many :superheroes
  belongs_to :superhero
end
