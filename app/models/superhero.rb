class Superhero < ApplicationRecord
  belongs_to :superpower
  validates :name, uniqueness: true
  validates :name, :super_name, presence: true
end
