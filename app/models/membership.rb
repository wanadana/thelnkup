class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :group

  scope :pending, -> { where(status: 'pending') }
  scope :admin, -> { where(admin: true) }
  scope :limit_three, -> { limit(3) }
  scope :oldest_first, -> { order(:created_at) }
end
