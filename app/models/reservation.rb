class Reservation < ApplicationRecord
   belongs_to :user
   belongs_to :restaurant

   with_options presence: true do
      validates :lastname, format: {with: /\A[ぁ-んァ-ン一-龥]/}
      validates :firstname, format: {with: /\A[ぁ-んァ-ン一-龥]/}
      validates :lastname_kana, format: {with: /\A[ァ-ヶー－]+\z/ }
      validates :firstname_kana, format: {with: /\A[ァ-ヶー－]+\z/ }
      validates :date_time
      validates :number
   end
end
