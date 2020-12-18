class User < ApplicationRecord
  has_many :weights
  has_many :fluids
  has_many :sodia
end
