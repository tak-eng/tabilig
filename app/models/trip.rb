class Trip < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :memos, dependent: :destroy
  has_many :missions, dependent: :destroy
  
  with_options presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/} do
    validates :name
  end
end
