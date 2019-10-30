class CreateCampaign < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.string :name, null: false
      t.text :cp_content, null: false
      t.bigint :provider_id
      t.timestamps
    end
  end
end
