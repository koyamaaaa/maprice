class RemoveReferenceServiceToNetLine < ActiveRecord::Migration[5.2]
  def up
    remove_reference :net_lines, :service, null: false
  end

  def down
    add_reference :net_lines, :service, null: false
  end
end
