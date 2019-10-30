class RemoveReferenceProviderToService < ActiveRecord::Migration[5.2]
  def up
    remove_reference :providers, :service
  end

  def down
    add_reference :providers, :service
  end
end
