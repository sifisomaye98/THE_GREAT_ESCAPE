class RentalsController < ApplicationController
  def index
    @my_rentals = Rental.where(user_id: current_user)
    @my_rentals = current_user.rentals
  end
  # def index
  #   @country = Country.find(params[:country_id])
  #   @rentals = Rental.where(country: @country)
  # end

  def new
    @rental = Rental.new
    @country = Country.find(params[:country_id])
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.country = Country.find(params[:country_id])
    @rental.user = current_user
    if @rental.save!
      redirect_to country_path(params[:country_id])
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:offer_value)
  end
end
