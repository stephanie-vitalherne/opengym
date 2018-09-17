class AddEventIDtoParticipants < ActiveRecord::Migration[5.2]
  def change
         add_column :participants, :event_id, :integer
  end
end
