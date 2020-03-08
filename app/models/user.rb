class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  has_many :purchases

  def library
    purchases.active.order(expires_at: :asc)
  end
end
