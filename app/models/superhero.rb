class Superhero < ApplicationRecord
  belongs_to :superpower
  validates :super_name, uniqueness: true

  def self.search(search)
  where("name LIKE ?", "%#{search}%")
  where("content LIKE ?", "%#{search}%")
end
end
