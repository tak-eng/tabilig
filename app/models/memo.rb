class Memo < ApplicationRecord
  belongs_to :trip

  with_options presence: true  do
    validates :text, format: { with: /\A[ぁ-んァ-ン一-龥]/}
  end
end
