class MembershipRequest < ApplicationRecord
  belongs_to :user
  belongs_to :group
  validates :question, presence: :true
  validates :answer, presence: :true
end
