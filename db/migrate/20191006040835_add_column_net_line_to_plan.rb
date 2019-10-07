class AddColumnNetLineToPlan < ActiveRecord::Migration[5.2]
  def up
    add_reference :plans, :net_line, null: false, foreign_key: true, default: 3
    add_reference :plans, :service, null: false, foreign_key: true, default: 1
  end

  def down
    remove_reference :plans, :net_line, null: false, foreign_key: true, default: 3
    remove_reference :plans, :service, null: false, foreign_key: true, default: 1
  end
end
