class Item < ApplicationRecord
  belongs_to :trip

  validates :name, presence: true
end
