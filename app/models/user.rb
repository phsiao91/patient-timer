class User < ApplicationRecord
  has_secure_password
  has_many :appointments
  has_many :staffs, through: :appointments
end
