class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :species
      t.string :classification
      t.boolean :loves_mom
      t.string :diet

      t.timestamps
    end
  end
end
