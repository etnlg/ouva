class AddDayToTripActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :trip_activities, :day, :integer
  end
end
