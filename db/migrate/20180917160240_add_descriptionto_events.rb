class AddDescriptiontoEvents < ActiveRecord::Migration[5.2]
  def change
                 add_column :events, :description, :text
  end
end
