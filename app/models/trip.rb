class Trip < ApplicationRecord
  has_many :items
  has_many :comments
  has_many :missions
  
  validates :name, presence: true
end
