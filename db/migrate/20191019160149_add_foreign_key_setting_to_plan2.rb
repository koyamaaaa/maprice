class AddForeignKeySettingToPlan2 < ActiveRecord::Migration[5.2]
  def up
    add_column :plans, :campaign_id, :bigint, default: 1
    add_foreign_key :plans, :campaigns, on_delete: :cascade, on_update: :cascade
  end

  def down
    remove_foreign_key :plans, :campaigns
    remove_index :plans, :campaign_id
    remove_reference :plans, :campaign
  end
end
