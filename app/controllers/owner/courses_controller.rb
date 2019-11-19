class Owner::CoursesController < ApplicationController
  def new
    user = current_user
    @course = Course.find(params[:user_id])
  end

  def create
    @course = Course.new(course_params)
    @course.save
    redirect_to owner_courses_path
  end

  private

  def course_params
    params.require(:course).permit(:title, :description, :price, :duration, :location, :date, :user_id)
  end
end
