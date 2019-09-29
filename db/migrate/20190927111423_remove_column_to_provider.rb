class RemoveColumnToProvider < ActiveRecord::Migration[5.2]
  def up
    remove_reference :providers, :provider, foreign_key: true
  end

  def down
    add_reference :providers, :provider, foreign_key: true
  end
end
