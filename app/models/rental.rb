class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :country
  validates :offer_value, uniqueness: true
  enum status: [:pending, :accepted, :declined]
end
