class ChangeColumnToProvider < ActiveRecord::Migration[5.2]
  def up
    change_column :providers, :provider_id, :integer, null: false
    change_column :providers, :name, :string, null: false
    rename_column :providers, :date_created, :created_at
    rename_column :providers, :date_modified, :updated_at
  end

  def down
    change_column :providers, :provider_id, :integer, null: true
    change_column :providers, :name, :string, null: true
  end
end
