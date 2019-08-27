class ChangeColumnToProviderTwo < ActiveRecord::Migration[5.2]
  def up
    change_column :providers, :provider_id, :primary_key, auto_increment: true
  end

  def down
    change_column :providers, :provider_id, auto_increment: false
    excute 'ALTER TABLE provider_id DROP PRIMARY KEY'
  end
end
