class AddReferencesToCampaign < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :campaigns, :providers
  end
end