class TripActivitiesController < ApplicationController

  def index
    trip_id = params[:trip_id]
    @trip = Trip.find(trip_id)
    @trip_length = (@trip.end_date - @trip.start_date) - 1
    @trip_activities = TripActivity.where(trip_id: trip_id)
    @trip = Trip.find(trip_id)
    @activity_ids = []
    @trip_activities.each do |trip_activity|
      @activity_ids.push(trip_activity.activity_id)
    end
    @activities = Activity.where(id: @activity_ids)
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
      }
    end
    @activity = @activities.sample
    @review = Review.new
  end


  def create
    @trip_activity = TripActivity.new
    @trip_activity.trip_id = params[:trip_id]
    @trip_activity.activity_id = params[:activity_id]
    @trip_activity.save!
    redirect_to root_path
  end

  private

  def trip_activity_params
    params.require(:trip_activity).permit(:start_time, :end_time)
  end
end
