class ActivitiesController < ApplicationController

  def index
    dates = params[:dates]
    if dates.nil? == false
      dates_splited = dates.split
      @start_date = dates_splited[0]
      @end_date = dates_splited[2]
    else
      @start_date = params[:start_date]
      @end_date = params[:end_date]
    end
    @location = params[:location]
    @day_date = params[:day_date]
    @activities = Activity.near(@location, 100)
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {activity: activity})
      }
    end
  end

  def show
    @location = params[:location]
    @activity = Activity.find(params[:id])
    number_of_reviews = 3
    @reviews = @activity.random_reviews(number_of_reviews)
    @start_date = params[:start_date]
    @end_date = params[:end_date]
    @day_date = params[:day_date]
  end

end
