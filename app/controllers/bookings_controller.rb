class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = current_user.bookings
  end

  def show
    @user = current_user
    @booking = Booking.find(params[:id])
    @course = Course.geocoded.find(params[:course_id])
    @markers = [{
      lat: @course.latitude,
      lng: @course.longitude,
      photo: helpers.asset_url('pin.png')
    }]
  end

  def new
    @user = current_user
    @booking = Booking.new
  end

  def create
    @user = current_user
    @course = Course.find(params[:course_id])
    @booking = Booking.new(user: @user, course: @course)
    @booking.save
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end
end
