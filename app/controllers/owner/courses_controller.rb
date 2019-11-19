class Owner::CoursesController < ApplicationController
  def new
    user = current_user
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.save
    redirect_to owner_courses_path(@course.id)
  end
  
  def edit
    @course = Course.find(params['id'])
  end

  def update
    @course = Course.find(params['id'])
    @course.update(course_params)
    redirect_to ownr_course_path(@course.id)
  end

  def show
    @course = Course.find(params[:id])
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to owner_courses_path
  end

  private

  def course_params
    params.require(:course).permit(:title, :description, :price, :duration, :location, :date, :user_id
  end
end
