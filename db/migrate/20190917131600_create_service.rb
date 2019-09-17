class CreateService < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name, null: false, unique: true
      t.timestamps
    end
  end
end
