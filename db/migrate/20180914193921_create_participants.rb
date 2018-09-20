class CreateParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :participants do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
