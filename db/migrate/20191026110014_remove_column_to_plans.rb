class RemoveColumnToPlans < ActiveRecord::Migration[5.2]
  def up
    remove_foreign_key :plans, :campaigns
    remove_reference :plans, :campaign, index: true
    remove_foreign_key :plans, :services
    remove_reference :plans, :service, index: true
  end

  def down
    add_column :plans, :campaign_id, :bigint, default: 1
    add_foreign_key :plans, :campaigns, on_delete: :cascade, on_update: :cascade
    add_index  :plans, :campaign_id
    add_column :plans, :service_id, :bigint, default: 1
    add_foreign_key :plans, :services, on_delete: :cascade, on_update: :cascade
    add_index :plans, :service_id
  end
end
