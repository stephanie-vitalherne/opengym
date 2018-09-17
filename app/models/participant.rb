class Participant < ApplicationRecord
  belongs_to :event
  before_save :default_values
  before_save { self.user_id = user_id.to_i }

  def default_values
    self.user_id ||= 0
  end
end
