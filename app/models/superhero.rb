class Superhero < ApplicationRecord
  belongs_to :superpower

  validates :super_name, uniqueness: true
  validates :name, presence: true
end
