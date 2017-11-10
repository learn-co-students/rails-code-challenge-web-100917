class Superhero < ApplicationRecord
  has_one :superpower
  validates :name, uniqueness: true
  validates :super_name, uniqueness: true
end
