class Item < ApplicationRecord
  belongs_to :trip

  with_options presence: true  do
    validates :name, format: { with: /\A[ぁ-んァ-ン一-龥]/}
  end
end
