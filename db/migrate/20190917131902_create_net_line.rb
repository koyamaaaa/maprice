class CreateNetLine < ActiveRecord::Migration[5.2]
  def change
    create_table :net_lines do |t|
      t.string :name, null: false, unique: true
      t.timestamps
    end
  end
end
