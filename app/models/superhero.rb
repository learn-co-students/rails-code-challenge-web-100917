class Superhero < ApplicationRecord
  belongs_to :superpower
  validates :name, uniqueness: true
  validate :same_super_name

  def same_super_name
    Superhero.all.each do |superhero|
      if superhero.super_name == self.super_name
        errors.add(:name, "This super name is already taken")
      end
    end
  end

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
  
end
