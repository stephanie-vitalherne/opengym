class Gym < ApplicationRecord
  has_one_attached :cover_photo
  # has_many :events
  # belongs_to :user
    before_save :default_values
    before_save { self.user_id = user_id.to_i }
  validates :name, :location, :user_id, presence: true
  def default_values
  self.user_id ||= 1
end
end
