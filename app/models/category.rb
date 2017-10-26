class Category < ApplicationRecord
  has_many :descriptors
  has_many :products
  
end
