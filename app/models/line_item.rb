class LineItem < ApplicationRecord
  belongs_to :receipts
  has_one :products
end
