class CreateTripActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :trip_activities do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :done
      t.references :trip, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
