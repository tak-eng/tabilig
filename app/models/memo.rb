class Memo < ApplicationRecord
  belongs_to :trip

  with_options presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/} do
    validates :text
  end
end
