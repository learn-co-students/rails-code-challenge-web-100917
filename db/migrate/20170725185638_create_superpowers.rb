class CreateSuperpowers < ActiveRecord::Migration[5.0]
  def change
    create_table :superpowers do |t|
      t.belongs_to :superhero
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
