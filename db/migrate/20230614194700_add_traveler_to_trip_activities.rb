class AddTravelerToTripActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :trip_activities, :traveler, :integer
  end
end
