class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @countries = Country.where(user: current_user)
    @bids = Rental.where(user: current_user)
  end
end
