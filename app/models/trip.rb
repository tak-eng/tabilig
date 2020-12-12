class Trip < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :comments
  has_many :missions, dependent: :destroy
  
  validates :name, presence: true
end
