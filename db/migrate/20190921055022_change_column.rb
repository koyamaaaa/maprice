class ChangeColumn < ActiveRecord::Migration[5.2]
  def up
    remove_column :plans, :plan_device_id_id, :bigint
  end

  def Change
    
    add_foreign_key :plans, :providers
  end
end
