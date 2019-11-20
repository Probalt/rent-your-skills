class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @course = Course.find(params[:course_id])
    @booking = Booking.find(params[:id])
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
    redirect_to course_bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @boooking.destroy
    redirect_to course_bookings_path(@course)
  end
end
