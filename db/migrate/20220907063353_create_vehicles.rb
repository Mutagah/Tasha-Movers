class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
    t.string :vehicle_type
    t.string :registration_no
    t.string :vehicle_image_url
    end
  end
end
