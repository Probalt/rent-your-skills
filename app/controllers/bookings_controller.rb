class BookingsController < ApplicationController
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
end
