class RenameUserEventsToJoin < ActiveRecord::Migration[5.2]
  def change
    rename_table :user_events, :joins
  end
end
