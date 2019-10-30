class CreatePlansCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :plans_campaigns do |t|
      t.integer :plan_id
      t.integer :campaign_id
      t.timestamps
    end
  end
end
