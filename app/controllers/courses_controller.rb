class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @courses = Course.geocoded.all
    @markers = @courses.map do |course|
      {
        lat: course.latitude,
        lng: course.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { course: course }),
        photo: helpers.asset_url('pin.png')
      }
    end
  end

  def show
    @course = Course.geocoded.find(params[:id])
    @markers = [{
      lat: @course.latitude,
      lng: @course.longitude,
      photo: helpers.asset_url('pin.png')
    }]
    @courses = Course.all
    @user = current_user
  end
end
