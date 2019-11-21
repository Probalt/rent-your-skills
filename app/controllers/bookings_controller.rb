class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
    @user = current_user
  end

  def show
    @course = Course.find(params[:course_id])
    @booking = Booking.find(params[:id])
    @user = current_user
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
