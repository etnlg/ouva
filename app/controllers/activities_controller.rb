class ActivitiesController < ApplicationController

  def index
    @location = params[:location]
  end

  def show
    @activity = Activity.find(params[:id])
  end

end
