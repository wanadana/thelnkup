class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :group

  scope :admin, -> { where(admin: true) }

  scope :pending, -> { where(status: 'pending') }
  scope :limit_three, -> { limit(3) }
  scope :oldest_first, -> { order(:created_at) }

  def accept!
    self.status = "Accepted"
    self.save
  end


  def reject!
    self.status = "Rejected"
    self.save
  end
end
