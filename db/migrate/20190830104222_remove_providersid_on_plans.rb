class RemoveProvidersidOnPlans < ActiveRecord::Migration[5.2]
  def change
    remove_column :plans, :providers_id
  end
end
