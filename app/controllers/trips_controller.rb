class TripsController < ApplicationController

  def new
    @trip = Trip.new
  end

  def index
    @trips = Trip.where(user_id: current_user.id)
  end

  def create
    @trip = Trip.new
    @trip.user_id = current_user.id
    @trip.save!
    redirect_to root_path
  end

  def which
    @trips = Trip.where(user_id: current_user.id)
    @activity_id = params[:format]
  end

  private

  def trip_params
    params.require(:trip).permit(:destination, :start_date, :end_date)
  end

end
