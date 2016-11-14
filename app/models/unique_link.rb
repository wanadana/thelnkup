class UniqueLink < ApplicationRecord
  belongs_to :user
  belongs_to :group
  validates :link, presence: true, uniqueness: true
end
