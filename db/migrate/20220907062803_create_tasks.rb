class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
    t.string :company_name
    t.string :task_description
    t.string :task_location_departure
    t.string :task_destination
    t.integer :estimated_distance_in_km
    end
  end
end
