class ActivitiesController < ApplicationController

  def index
    @location = params[:location]
    @activities = Activity.near(@location, 100)
  end

  def show
    @activity = Activity.find(params[:id])
  end

end
