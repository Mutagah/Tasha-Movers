# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_08_082844) do
  create_table "drivers", force: :cascade do |t|
    t.string "license_no"
    t.string "name"
    t.integer "years_of_experience"
    t.string "vehicle_type_licensed"
    t.string "home_location"
    t.string "driver_image_url"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "company_name"
    t.string "task_description"
    t.string "task_location_departure"
    t.string "task_destination"
    t.integer "estimated_distance_in_km"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "vehicle_type"
    t.string "registration_no"
    t.string "vehicle_image_url"
    t.integer "task_id"
    t.integer "driver_id"
  end

end
