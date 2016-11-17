class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :group

  scope :pending, -> { where(status: 'pending') }
end
