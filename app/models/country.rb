class Country < ApplicationRecord
  has_many :rentals, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
