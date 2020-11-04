class CreateExhibits < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibits do |t|
      t.string :biome
      t.integer :quantity_of_animal
      t.references :animal, null: false, foreign_key: true
      t.references :zoo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
