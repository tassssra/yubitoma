class ChangeColumnToJoin < ActiveRecord::Migration[5.2]
  def down
    change_column :index
  end
end
