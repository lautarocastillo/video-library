class Video < ApplicationRecord
  has_many :episodes

  validates :title, presence: true
  validates :plot, presence: true
  validates :video_type, presence: true

  enum video_type: [:movie, :season]
end
