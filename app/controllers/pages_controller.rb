class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def intermediaire
    @start_date = params[:start_date]
    @end_date = params[:end_date]
    @act_hash = {}
    @act_hash[1] = Activity.find(params[:activity_id])
    @trip_length =(Date.parse(@end_date) - Date.parse(@start_date)) - 1
  end
end
