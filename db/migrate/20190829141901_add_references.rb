class AddReferences < ActiveRecord::Migration[5.2]
  def change
    rename_column :providers, :provider_id, :id
    rename_column :plans, :plan_id, :id
  end
end
