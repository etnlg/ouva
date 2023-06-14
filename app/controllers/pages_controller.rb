class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    number_of_activities = 10
    @activities = Activity.order('RANDOM()').limit(number_of_activities)
    session["act_hash"] = {}
  end

  def add
    @location = params[:location]
    @start_date = params[:start_date]
    @end_date = params[:end_date]
    @activity_id = params[:activity_id]
  end

  def intermediaire
    @location = params[:location]
    @date = params[:day_date]
    @num_traveller = params[:travelers]
    @start_date = params[:start_date]
    @end_date = params[:end_date]
    activity_day = (Date.parse(@date) - Date.parse(@start_date)) * 1.0
    if session['act_hash'].nil?
      session['act_hash'] = {}
    end
    if params[:breakday]
      session['act_hash'][activity_day.to_s] = "NoActivity"
    else
      session['act_hash'][activity_day.to_s] = [Activity.find(params[:activity_id]).id, @num_traveller]
    end
    @trip_length =(Date.parse(@end_date) - Date.parse(@start_date)) - 1
    arr = []
    session['act_hash'].each_value do |v|
      if v[0].to_i != 0
        arr.push(v[0])
      end
    end
    id = arr.sample
    @activity = Activity.find(id)
  end

  def checkout
    @location = params[:location]
    @activity_ids = params[:activitiy_ids]
    @start_date = params[:start_date]
    @end_date = params[:end_date]
  end

  def explore
    @activities = Activity.all
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
      }
    end
  end
end
