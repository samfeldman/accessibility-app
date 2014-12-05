require 'csv'

class Entrance < ActiveRecord::Base
  def self.parse_data
    CSV.foreach('./StationEntrances.csv', headers: true, col_sep:',') do |row|
      entrance = Entrance.new(station_name: row[2])
      if entrance.save
        p "yay!"
      else
        p "noooooo!"
      end
    end
  end
end
