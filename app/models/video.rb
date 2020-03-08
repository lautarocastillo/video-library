class Video < ApplicationRecord
  has_many :episodes
  has_many :purchases

  validates :title, presence: true
  validates :plot, presence: true
  validates :video_type, presence: true

  enum video_type: [:movie, :season]

  default_scope { order(created_at: :desc) }
end
