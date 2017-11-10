class Superhero < ApplicationRecord
  belongs_to :superpower, optional: true

  validates :name, uniqueness: true
  validates :super_name, uniqueness: true

end
