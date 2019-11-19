class Owner::CoursesController < ApplicationController
  def edit
    @course = Course.find(params['id'])
  end

  def update
    @course = Course.find(params['id'])
    @course.update(course_params)
    redirect_to ownr_course_path(@course.id)
  end
end
