class Animal < ApplicationRecord

    has_many :exhibits
    has_many :zoos, through: :exhibits

    validates :species, :classification, :diet, presence: true
    validates :species, uniqueness: true
    validates :diet, inclusion: {in: ["Herbivore", "Omnivore", "Carnivore"], message: "Invalid diet selection"}

    def descriptor 
        ["academic", "adorable", "alluring", "boastful", "bungling", "debonair", "decorous", "dignified", "earnest", "eccentric", "exuberant", "fashionable","generous", "gregarious", "handsome", "hyperactive", "immaculate", "lively", "noble", "obliging", "pragmatic", "respectable", "sincere", "tactful", "trustworthy", "venerable", "witty", "zany"].sample
    end

end
