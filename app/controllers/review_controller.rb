class ReviewController < ApplicationController
  def create
    @review = Review.new
    @review.trip_activity_id = params[:trip_activity_id]
    @review.save!

    redirect_to trip_trip_activity_path(params[:trip_activity_id])
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
