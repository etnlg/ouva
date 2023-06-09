class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    number_of_activities = 10
    @activities = Activity.order('RANDOM()').limit(number_of_activities)
  end

  def intermediaire
    @location = params[:location]
    @date = params[:date]
    @num_traveller = params[:travelers]
    @start_date = params[:start_date]
    @end_date = params[:end_date]
    if session['act_hash'].nil?
      session['act_hash'] = {}
    end
    x = (Date.parse(@date) - Date.parse(@start_date)) * 1.0
    session['act_hash'][x] = [Activity.find(params[:activity_id]).id, @num_traveller]
    @trip_length =(Date.parse(@end_date) - Date.parse(@start_date)) - 1
  end

  def checkout
    @activity_ids = params["activitiy_ids"]
  end
end
