class Vendor < ApplicationRecord
  has_many :products
  has_many :descriptors
end
