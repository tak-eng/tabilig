class Trip < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :memos, dependent: :destroy
  has_many :missions, dependent: :destroy
  
  validates :name, presence: true
end
