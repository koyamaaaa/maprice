class AddColumnToPlans < ActiveRecord::Migration[5.2]
  def change
    # plansテーブルに追加
    add_reference :plans, :net_line, foreign_key: true
    add_reference :plans, :service, foreign_key: true
    add_reference :plans, :data_capacity, foreign_key: true
    add_reference :plans, :provider, foreign_key: true

    # devicesテーブルに追加
    add_reference :devices, :service, foreign_key: true

    # net_linesテーブルに追加
    add_reference :net_lines, :service, foreign_key: true

    # providersテーブルに追加
    add_reference :providers, :service, foreign_key: true
  end
end
