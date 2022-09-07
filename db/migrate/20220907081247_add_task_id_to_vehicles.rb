class AddTaskIdToVehicles < ActiveRecord::Migration[7.0]
  def change
  add_column :vehicles, :task_id, :integer
  add_column :vehicles, :driver_id, :integer
  end
end
