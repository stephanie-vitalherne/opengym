class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :event_type
      t.boolean :approved
      t.boolean :denied
      t.date :start_date
      t.date :end_date
      t.user :references
      t.gym :references

      t.timestamps
    end
  end
end
