class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :event_type
      t.boolean :approved, default: false
      t.boolean :denied, default: false
      t.date :start_date
      t.date :end_date
      t.integer :user_id
      t.integer :gym_id

      t.timestamps
    end
  end
end
