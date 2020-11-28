class Item < ApplicationRecord
  belongs_to :trip

  validates :name, presence: true
  validates :number, presence: true
end
