class DeleteColumnToPlan < ActiveRecord::Migration[5.2]
  def up
    remove_reference :plans, :service, foreign_key: true
    remove_reference :plans, :net_line, foreign_key: true
  end

  def down
    add_reference :plans, :service, foreign_key: true
    add_reference :plans, :net_line, foreign_key: true
  end
end
