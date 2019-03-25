class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title, null: false, length: 30
      t.date :date, null: false
      t.text :description, null: false, length: 1000
      t.string :address, null: false

      t.timestamps
    end
  end
end
