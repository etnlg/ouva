class ActivitiesController < ApplicationController

  def index
    @start_date = params[:start_date]
    @end_date = params[:end_date]
    @location = params[:location]
    @activities = Activity.near(@location, 100)
  end

  def show
    @location = params[:location]
    @activity = Activity.find(params[:id])

    number_of_reviews = 3
    @reviews = @activity.random_reviews(number_of_reviews)


    @start_date = params[:start_date]
    @end_date = params[:end_date]

  end

end
