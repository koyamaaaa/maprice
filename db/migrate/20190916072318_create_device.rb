class CreateDevice < ActiveRecord::Migration[5.2]
  def change
    create_table :devices do |t|
      t.string :name, unique: true, null: false
      t.text :device_price, null: false
      t.timestamps
    end
  end
end
