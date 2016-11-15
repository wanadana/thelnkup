class MembershipRequest < ApplicationRecord
  belongs_to :user
  belongs_to :group
  validates :answer, presence: :true
end
