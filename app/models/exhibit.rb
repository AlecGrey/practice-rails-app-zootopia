class Exhibit < ApplicationRecord

  belongs_to :animal
  belongs_to :zoo

  validates :biome, :zoo_id, presence: true
  validates :biome, uniqueness: {scope: :zoo_id}
  validates :quantity_of_animal, presence: {scope: :animal_id}

end
