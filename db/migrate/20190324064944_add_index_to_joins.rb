class AddIndexToJoins < ActiveRecord::Migration[5.2]
  def change
    add_index :joins, [:user_id, :event_id], unique: true
  end
end
