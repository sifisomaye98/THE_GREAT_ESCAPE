class CountriesController < ApplicationController
  def index
    @countries = Country.all
    @rental = Rental.new
    if params[:search].present?
      @countries = @countries.where("name ILIKE ?", "%#{params[:search][:query]}%")
    end
  end

  def show
    @country = Country.find(params[:id])
    @markers = [
      {
          lat: @country.latitude,
          lng: @country.longitude,
    }]
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)
    @country.user = current_user
    if @country.save!
      redirect_to country_path(@country), alert: "country created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def country_params
    params.require(:country).permit(:photo, :name, :description, :initial_price)
  end
end
