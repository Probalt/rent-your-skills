class BookingsController < ApplicationController
def show
  @course = Course.find(params[:course_id])
  @booking = Booking.find(params[:id])
end

def destroy
  @booking = Booking.find(params[:id])
  @boooking.destroy
  redirect_to course_bookings_path
end
end
