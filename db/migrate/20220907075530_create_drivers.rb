class CreateDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers do |t|
      t.string :license_no
      t.string :name
      t.integer :years_of_experience
      t.string :vehicle_type_licensed
      t.string :home_location
    end
  end
end
