class Superhero < ApplicationRecord
  belongs_to :superpower

  validates :name, presence: true
  validates :super_name, presence: true, uniqueness: true

  def superpower_name
    superpower = Superpower.find(self.superpower_id)
    superpower.name
  end

  def self.search(search)
    if search
      superpower = Superpower.find_by(name: search)
      superpower1 = superpower.id
      self.find_by(superpower_id: superpower1)
    else
      find(:all)
    end
  end
end
