class ChangeColumnToPlan < ActiveRecord::Migration[5.2]
  def up
    add_reference :plans, :service, foreign_key: true
    add_reference :plans, :net_line, foreign_key: true
  end

  def down
    remove_reference :plans, :service, foreign_key: true
    remove_reference :plans, :net_line, foreign_key: true
  end
end
