class ActivitiesController < ApplicationController

  def index
    @start_date = params[:start_date]
    @end_date = params[:end_date]
    @location = params[:search]
    @activities = Activity.near(@location, 100)
  end

  def show
    @location = params[:location]
    @activity = Activity.find(params[:id])
    @start_date = params[:start_date]
    @end_date = params[:end_date]
  end

end
