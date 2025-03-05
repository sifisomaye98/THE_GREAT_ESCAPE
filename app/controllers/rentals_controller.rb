class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def accept
    @rental.update(status: 1)
  end

  def decline
    @rental.update(status: 2)
  end
end
