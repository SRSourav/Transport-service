class CreateScheduleids < ActiveRecord::Migration[5.1]
  def change
    create_table :scheduleids do |t|
      t.string :bus_id
      t.string :time
      t.string :starting_point
      t.string :destination
      t.string :bus_type

      t.timestamps
    end
  end
end