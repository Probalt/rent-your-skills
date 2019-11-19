class Owner::CoursesController < ApplicationController
  before_action :set_course, only: [:edit, :update, :show, :destroy]

  def index
    @courses = current_user.courses
  end

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
  end

  def update
    @course.update(course_params)
    redirect_to ownr_course_path(@course.id)
  end

  def show
  end

  def destroy
    @course.destroy
    redirect_to owner_courses_path
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:title, :description, :price, :duration, :location, :date, :user_id)
  end
end
