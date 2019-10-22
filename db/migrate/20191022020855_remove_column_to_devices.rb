class RemoveColumnToDevices < ActiveRecord::Migration[5.2]
  def up
    remove_column :devices, :device_price, :text, null: false
  end

  def down
    remove_column :devices, :device_price, :text, null: false
  end
end
