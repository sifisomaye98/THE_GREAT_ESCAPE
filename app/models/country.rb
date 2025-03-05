class Country < ApplicationRecord
  has_many :rentals
  belongs_to :user, dependent: :destroy
end
