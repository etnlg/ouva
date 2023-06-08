class ActivitiesController < ApplicationController

  def index
    @start_date = params[:arrive_date]
    @end_date = params[:date]
    @location = params[:location]
    @activities = Activity.near(@location, 100)
  end

  def show
    @activity = Activity.find(params[:id])
    number_of_reviews = 3
    @reviews = @activity.random_reviews(number_of_reviews)

  end

end
