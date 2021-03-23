class User < ApplicationRecord
  has_secure_password
  has_many :donations # array 
  has_many :organizations, through: :donations
end
