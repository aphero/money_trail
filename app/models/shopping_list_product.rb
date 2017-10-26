class ShoppingListProduct < ApplicationRecord
  has_and_belongs_to_many :shopping_lists
  has_and_belongs_to_many :products
  
end
