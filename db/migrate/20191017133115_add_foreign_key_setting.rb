class AddForeignKeySetting < ActiveRecord::Migration[5.2]
  def up
    remove_foreign_key :plans, :campaigns
    remove_index :plans, :campaign_id
    remove_reference :plans, :campaign
    remove_foreign_key :plans, :data_capacities
    remove_index :plans, :data_capacity_id
    remove_reference :plans, :data_capacity
    remove_foreign_key :plans, :providers
    remove_index :plans, :provider_id
    remove_reference :plans, :provider
    remove_foreign_key :plans, :net_lines
    remove_index :plans, :net_line_id
    remove_reference :plans, :net_line
    remove_foreign_key :plans, :services
    remove_index :plans, :service_id
  end

  def down
    add_foreign_key :plans, :campaigns, column: :provider_id
    add_foreign_key :plans, :data_capacities, column: :data_capacity_id
    add_foreign_key :plans, :providers, column: :provider_id
    add_foreign_key :plans, :net_lines, column: :net_line_id
    add_reference :plans, :services, column: :service_id
  end
end
