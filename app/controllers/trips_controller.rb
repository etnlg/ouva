class TripsController < ApplicationController

  def new
    @trip = Trip.new
  end

  def index
    @trips = Trip.where(user_id: current_user.id)
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user_id = current_user.id
    @trip.save!
    @activity_ids = session[:act_hash]
    @activity_ids.each do |day, array|
      if array[0].to_i != 0
        trip_activity = TripActivity.new(trip_id: @trip.id, activity_id: array[0], day: day.to_i, done: false)
        trip_activity.save!
      end
    end
    redirect_to trip_trip_activities_path(@trip)
  end

  def which
    @trips = Trip.where(user_id: current_user.id)
    @activity_id = params[:format]
  end

  private

  def trip_params
    params.permit(:destination, :start_date, :end_date)
  end

end
