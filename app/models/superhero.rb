class Superhero < ApplicationRecord
  belongs_to :superpower

  validates :super_name, presence: true, uniqueness: true

end
