# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141205222654) do

  create_table "entrances", force: true do |t|
    t.string   "division"
    t.string   "line"
    t.string   "station_name"
    t.string   "station_latitude"
    t.string   "station_longitude"
    t.string   "route_1"
    t.string   "route_2"
    t.string   "route_3"
    t.string   "route_4"
    t.string   "route_5"
    t.string   "route_6"
    t.string   "route_7"
    t.string   "route_8"
    t.string   "route_9"
    t.string   "route_10"
    t.string   "route_11"
    t.string   "entrance_type"
    t.string   "entry"
    t.string   "exit_only"
    t.string   "vending"
    t.string   "staffing"
    t.string   "staff_hours"
    t.string   "ADA"
    t.string   "ADA_notes"
    t.string   "free_crossover"
    t.string   "north_south_street"
    t.string   "east_west_street"
    t.string   "corner"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
