class Staff < ApplicationRecord
    has_many :appointments
    has_many :procedures
    has_many :users, through: :appointments
end
