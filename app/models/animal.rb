class Animal < ApplicationRecord

    has_many :exhibits
    has_many :zoos, through: :exhibits

    validates :species, :classification, :diet, presence: true
    validates :species, uniqueness: true
    validates :diet, inclusion: {in: ["Herbivore", "Omnivore", "Carnivore"], message: "Invalid diet selection"}

end
