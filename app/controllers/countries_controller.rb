class CountriesController < ApplicationController
  def new
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)
    @country.user = current_user
    if @country.save!
      redirect_to country_path(@country)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
  end

  private

  def country_params
    params.require(:country).permit(:image_url, :name, :description, :initial_price)
  end
end
