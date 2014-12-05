class CreateEntrances < ActiveRecord::Migration
  def change
    create_table :entrances do |t|
      t.string :division
      t.string :line
      t.string :station_name
      t.string :station_latitude
      t.string :station_longitude
      t.string :route_1
      t.string :route_2
      t.string :route_3
      t.string :route_4
      t.string :route_5
      t.string :route_6
      t.string :route_7
      t.string :route_8
      t.string :route_9
      t.string :route_10
      t.string :route_11
      t.string :entrance_type
      t.string :entry
      t.string :exit_only
      t.string :vending
      t.string :staffing
      t.string :staff_hours
      t.string :ADA
      t.string :ADA_notes
      t.string :free_crossover
      t.string :north_south_street
      t.string :east_west_street
      t.string :corner
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
