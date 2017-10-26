class Location < ApplicationRecord
  has_many :descriptors
  belongs_to :stores
  belongs_to :sessions
  belongs_to :users
  
end
