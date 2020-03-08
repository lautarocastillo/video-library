class Video < ApplicationRecord
  has_many :purchases

  validates :title, presence: true
  validates :plot, presence: true

  default_scope { order(created_at: :desc) }
end
