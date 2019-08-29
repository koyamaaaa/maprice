class CreatePlan < ActiveRecord::Migration[5.2]
  def change
    create_table :plans, id: false, primary_key: :plan_id, auto_increment: true do |t|
      t.integer :plan_id, null: false
      t.string :name
      t.integer :provider_id, null: false
      t.integer :line_id, null: false
      t.integer :lineplan_id, null: false
      t.text :plan_outline
      t.integer :construct_period
      t.integer :total_fee
      t.integer :plan_device_fee
      t.integer :cancel_charge
      t.integer :campaign_id, null: false
      t.integer :device_id, null: false
      t.integer :option_id, null: false
      t.text :plan_url
      t.datetime :created_at
      t.datetime :updated_at

    end
  end
end
