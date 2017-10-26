class Product < ApplicationRecord
  belongs_to :vendors
  belongs_to :line_items
  belongs_to :stores
  has_one :category
end
