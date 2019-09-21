class DeleteColumntToPlan < ActiveRecord::Migration[5.2]
  def up
    remove_column :plans, :plan_device_id
  end

  def down
    add_column :plans, :plan_device_id, :bigint, null: false
    add_reference :plans, :plan_device_id, foreign_key: { to_table: :plans_devices } 
  end
end
