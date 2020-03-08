class Season < Video
  has_many :episodes, -> { order(:number) }, foreign_key: 'video_id'

  validates :number, presence: true

  store :extra_attributes, accessors: :number
end
