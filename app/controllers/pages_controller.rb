class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    # Assuming the current user has countries
    @my_countries = Country.where(user: current_user) # Fetching countries owned by the current_user
    @renter = Rental.where(country: @my_countries)
    # Check if the user has any countries
    if @my_countries.nil? || @my_countries.empty?
      flash[:alert] = "You do not own any countries yet."
    end

    # Add other instance variables like @renters, @rented_countries, etc., if needed
  end
end
