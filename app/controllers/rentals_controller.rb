class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def create
    @rentals = Rental.new(params[:id])
    if @rental.save! # Will raise ActiveModel::ForbiddenAttributesError
      redirect_to rental_path(@rental)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
