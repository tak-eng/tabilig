class Memo < ApplicationRecord
  belongs_to :trip

  validates :text, presence: true
end
