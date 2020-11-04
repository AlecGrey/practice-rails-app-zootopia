class Exhibit < ApplicationRecord

  belongs_to :animal
  belongs_to :zoo

  validates :biome, :zoo_id, presence: true
  validates :biome, uniqueness: {scope: :zoo_id}
  validates :quantity_of_animal, presence: {scope: :animal_id, message: "must be declared."}
  validates :quantity_of_animal, numericality: {greater_than: 0}

  BIOMES = ["Freshwater", "Marine", "Desert", "Forest", "Grassland", "Tundra"]

  def animal_count
    if quantity_of_animal > 1
      "There are currently " + quantity_of_animal.to_s + " " + self.animal.species.pluralize + " in the exhibit."
    else
      "There is currently " + quantity_of_animal.to_s + " " + self.animal.species + " in the exhibit."
    end
  end

end
