class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :group

  scope :admin, ->        { where(admin: true) }
  scope :pending, ->      { where(status: 'pending') }
  scope :approved, ->     { where(status: 'approved') }
  scope :joined, ->       { where(status: 'joined') }
  scope :limit_one, ->    { limit(1) }
  scope :oldest_first, -> { order(:created_at) }

  def approve!
    self.status = "approved" unless status == "joined"
    save
  end

  def reject!
    self.status = "rejected" unless status == "joined"
    save
  end

  def join!
    self.status = "joined"
    save
  end
end
