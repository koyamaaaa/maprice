class CreatePlansServices < ActiveRecord::Migration[5.2]
  def change
    create_table :plans_services do |t|
      t.integer :plan_id
      t.integer :service_id
      t.timestamps
    end
  end
end