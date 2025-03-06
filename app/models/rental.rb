class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :country
  enum status: [:pending, :accepted, :declined]
end
