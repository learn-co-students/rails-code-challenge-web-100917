class Superhero < ApplicationRecord
  belongs_to :superpower
  validates_presence_of :name
  validates_presence_of :super_name
  validates_uniqueness_of :super_name
  # validates_presence_of :superpower
end
