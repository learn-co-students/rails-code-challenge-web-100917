class Superpower < ApplicationRecord
  has_many :superheroes, dependent: :destroy
end
