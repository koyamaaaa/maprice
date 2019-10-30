class RenamePlansDevicesToPlans < ActiveRecord::Migration[5.2]
  def change
    rename_column :plans, :plans_devices, :plans_devices_id
  end
end
