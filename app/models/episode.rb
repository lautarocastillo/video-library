class Episode < ApplicationRecord
  alias_attribute :season, :video

  validate :validate_season, on: :create

  belongs_to :video

  private

  def validate_season
    if video.class != Season
      errors.add(:video, 'Must be a Season')
    end
  end
end
