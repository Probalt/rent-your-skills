class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @course = Course.geocoded.find(params[:id])
    @booking = Booking.find(params[:id])
    @markers = [{
      lat: @course.latitude,
      lng: @course.longitude,
      image_url: helpers.asset_url('pin.png')
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
