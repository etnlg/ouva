class Business::ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :authenticate_owner!

  def index
  end

end
