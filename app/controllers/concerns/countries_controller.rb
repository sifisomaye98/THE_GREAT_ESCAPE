class CountriesController < ActionController::Base
  def show
    @country = Country.find(params[:id])
  end
end
