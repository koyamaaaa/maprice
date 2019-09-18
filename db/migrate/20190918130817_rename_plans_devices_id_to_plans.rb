class RenamePlansDevicesIdToPlans < ActiveRecord::Migration[5.2]
  def change
    rename_column :plans, :plans_devices_id, :plan_device_id
  end
end
