class AddForeignKeySettingToPlan < ActiveRecord::Migration[5.2]
  def up
    remove_column :plans, :service_id, :string
  end

  def down
    add_column :plans, :service_id, :string
  end
end
