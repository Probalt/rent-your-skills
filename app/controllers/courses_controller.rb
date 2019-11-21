class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # @courses = Course.all
    @courses = Course.geocoded.all

    @markers = @courses.map do |course|
      {
        lat: course.latitude,
        lng: course.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { course: course }),
        image_url: helpers.asset_url('pin.png')
      }
    end
  end

  def show
    # @course = Course.find(params[:id])
    @course = Course.geocoded.find(params[:id])
    @markers = [{
      lat: @course.latitude,
      lng: @course.longitude,
      image_url: helpers.asset_url('pin.png')
    }]
  end
end
