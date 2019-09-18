class CreateDataCapacity < ActiveRecord::Migration[5.2]
  def change
    create_table :data_capacities do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
