class CreatePlan < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :name, unique: true, null: false
      t.text :p_content, null: false
      t.string :construct_period, null: false
      t.integer :total_fee, null: false
      t.integer :plan_device_fee, null: false
      t.text :plan_url, null: false
      t.bigint :campaign_id, null: false
      t.bigint :plans_devices, null: false
      t.timestamps
    end
  end
end
