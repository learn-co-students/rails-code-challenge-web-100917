class Superpower < ApplicationRecord
  has_many :superhereos

  def superheroes
    superheroes=[]
    Superhero.all.each do |superhero|
      if superhero.superpower_id == self.id
        superheroes << superhero
      end
    end
    superheroes
  end

end
