class CountriesController < ApplicationController
  def new
    @country = Country.new
  end

  def create
    @country = Country.find(params[:id])
    @country = Country.new(country_params)
    if @country.save!
      redirect_to country_path(@country)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def country_params
    params.require(:country).permit(:image_url, :name, :description, :initial_price, :user_id)
  end
end
