class Superhero < ApplicationRecord
  has_one :superpower

  def superpower
    Superpower.find(self.superpower_id)
  end

  def superpower_name
    Superpower.find(self.superpower_id).name
  end
  

end
