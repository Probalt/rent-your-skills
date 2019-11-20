class Owner::CoursesController < ApplicationController
  before_action :set_course, only: [:edit, :update, :show, :destroy]

  def index
    @courses = current_user.courses
  end

  def new
    @user = current_user
    @course = Course.new
  end

  def create
    @user = current_user
    @course = Course.new(course_params)
    @course.user_id = @user.id
    if @course.save!
      redirect_to owner_courses_path
    else
      render :new
    end
  end

  def edit
    @user = current_user
  end

  def update
    @course.update(course_params)
    redirect_to owner_course_path(@course.id)
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
    params.require(:course).permit(:title, :description, :price, :duration, :location, :date, :image_url)
  end
end
