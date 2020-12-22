class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :weights
  has_many :fluids
  has_many :sodia
end
