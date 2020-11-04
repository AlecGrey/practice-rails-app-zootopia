# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Zoo.destroy_all
Animal.destroy_all

ANIMAL_CLASSIFICATION = ["Mammal", "Bird", "Reptile", "Amphibian", "Fish", "Invertebrate"]
BIOMES = ["Freshwater", "Marine", "Desert", "Forest", "Grassland", "Tundra"]
BOOL = [true, false]
DIET = ["Herbivore", "Omnivore", "Carnivore"]


10.times do |i|
    Animal.create(
        :species => Faker::Creature::Animal.name,
        :classification => ANIMAL_CLASSIFICATION.sample,
        :loves_mom => BOOL.sample,
        :diet => DIET.sample
    )
end

3.times do |i|
    zoo = Zoo.create(
        :name => Faker::Address.city + " Zoo"
    )
    5.times do |j|
        exhibit = Exhibit.new(
            :biome => BIOMES.sample
        )
        exhibit.zoo = zoo
        exhibit.animal = Animal.all.sample
        exhibit.quantity_of_animal = rand(1..5)
        exhibit.save
    end
end

