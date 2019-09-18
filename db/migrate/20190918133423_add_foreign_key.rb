class AddForeignKey < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :plans, :plans_devices, column: :plan_device_id
    add_foreign_key :plans, :campaigns
  end
end
