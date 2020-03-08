class Season < Video
  has_many :episodes, foreign_key: 'video_id'

  validates :number, presence: true

  store :extra_attributes, accessors: :number
end
