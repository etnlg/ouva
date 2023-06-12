class TripActivitiesController < ApplicationController

  def index
    trip_id = params[:trip_id]
    @trip_activities = TripActivity.where(trip_id: trip_id)
    @trip = Trip.find(trip_id)
  end


  def create
    @trip_activity = TripActivity.new
    @trip_activity.trip_id = params[:trip_id]
    @trip_activity.activity_id = params[:activity_id]
    @trip_activity.save!
    redirect_to root_path
  end

  def trip_activity_params
    params.require(:trip_activity).permit(:start_time, :end_time)
  end
end
