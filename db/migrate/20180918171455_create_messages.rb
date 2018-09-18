class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :sender_id
      t.string :subject
      t.text :body
      t.boolean :read

      t.timestamps
    end
  end
end
