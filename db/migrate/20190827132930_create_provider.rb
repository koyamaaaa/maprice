class CreateProvider < ActiveRecord::Migration[5.2]
  def change
    create_table :providers, id: false, primary_key: :provider_id do |t|
      t.integer :provider_id
      t.string :name, unique: true
      t.datetime :date_created
      t.datetime :date_modified
    end
  end
end
