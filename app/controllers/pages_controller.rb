class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @user = current_user
    @courses = Course.all
    @bookings = Booking.all
    @courses_near = Course.where("address ILIKE ?", "%Bordeaux%")
  end
end
