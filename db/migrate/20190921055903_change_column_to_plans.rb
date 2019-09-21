class ChangeColumnToPlans < ActiveRecord::Migration[5.2]
  def change
    change_column_null :plans, :provider_id, false
    change_column_null :plans, :net_line_id, false
    change_column_null :plans, :service_id, false
    change_column_null :plans, :data_capacity_id, false
  end
end
