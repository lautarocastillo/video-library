class Purchase < ApplicationRecord
  AVAILABLE_OPTIONS = { sd: 299, hd: 499 }.freeze
  EXPIRES_IN = 2.days.freeze

  belongs_to :user
  belongs_to :video

  before_create :set_price
  before_create :set_expiration

  validates :quality, presence: true
  validate :new_content, on: :create

  enum quality: AVAILABLE_OPTIONS.keys

  scope :active, -> { where('expires_at > ?', DateTime.now) }

  def set_price
    self.price = AVAILABLE_OPTIONS[quality.to_sym]
  end

  def set_expiration
    self.expires_at = DateTime.now + EXPIRES_IN
  end

  private

  def new_content
    if user.library.pluck(:video_id).include? video_id
      errors.add(:user, 'already has this content')
    end
  end
end
