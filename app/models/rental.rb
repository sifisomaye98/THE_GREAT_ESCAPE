class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :country
  enum status: { pending: 0, accepted: 1, declined: 2 }
end
