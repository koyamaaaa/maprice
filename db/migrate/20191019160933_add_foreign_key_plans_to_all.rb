class AddForeignKeyPlansToAll < ActiveRecord::Migration[5.2]
  def up
    add_column :plans, :provider_id, :bigint, default: 1
    add_foreign_key :plans, :providers, on_delete: :cascade, on_update: :cascade
    add_column :plans, :data_capacity_id, :bigint, default: 1
    add_foreign_key :plans, :data_capacities, on_delete: :cascade, on_update: :cascade
    add_column :plans, :net_line_id, :bigint, default: 3
    add_foreign_key :plans, :net_lines, on_delete: :cascade, on_update: :cascade
    add_column :plans, :service_id, :bigint, default: 1
    add_foreign_key :plans, :services, on_delete: :cascade, on_update: :cascade
  end

  def down
    remove_foreign_key :plans, :provider
    remove_foreign_key :plans, :data_capacity
    remove_foreign_key :plans, :net_line
    remove_foreign_key :plans, :service
    remove_index :plans, :provider_id
    remove_index :plans, :data_capacity_id
    remove_index :plans, :net_line_id
    remove_index :plans, :service_id
    remove_reference :plans, :provider
    remove_reference :plans, :data_capacity
    remove_reference :plans, :net_line
    remove_reference :plans, :service
  end
end
