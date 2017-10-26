class Descriptor < ApplicationRecord
  belongs_to :locations
  belongs_to :vendors
  belongs_to :categories
  belongs_to :stores
  belongs_to :products
  
end
