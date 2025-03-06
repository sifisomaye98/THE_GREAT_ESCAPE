class RentalsController < ApplicationController
  def index
    @my_countries = Country.where(user_id: current_user)
    @renters = User.joins(:rentals).where(rentals: { country_id: @my_countries.pluck(:id) }).distinct

    # Countries the current user has rented
    @rented_countries = Country.joins(:rentals).where(rentals: { user_id: current_user.id })
    @rentals = Rental.all
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

  def accept
    @rental.update(status: 1)
  end

  def decline
    @rental.update(status: 2)
  end
end
