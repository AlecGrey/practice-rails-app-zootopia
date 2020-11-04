class Zoo < ApplicationRecord

    has_many :exhibits, dependent: :destroy
    has_many :animals, through: :exhibits

end
