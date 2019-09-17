class CreatePlanDevice < ActiveRecord::Migration[5.2]
  def change
    create_table :plans_devices do |t|
      t.integer :plan_id, null: false
      t.integer :device_id, null: false
      t.timestamps
    end
  end
end
