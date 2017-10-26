class Receipt < ApplicationRecord
  belongs_to :users
  has_many :line_items
  has_one :stores

end
