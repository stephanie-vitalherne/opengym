class Event < ApplicationRecord
  # belongs_to :user
belongs_to :gym
has_one_attached :cover_photo
end
