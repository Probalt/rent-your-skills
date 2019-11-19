class Owner::CoursesController < ApplicationController
  def show
    @courses = Course.find(params[:id])
  end

  def destroy
    @courses = Course.find(params[:id])
    @course.destroy
  end
end
