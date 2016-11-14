class Group < ApplicationRecord
  has_many :users, through: :memberships
  has_many :memebership_requests
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
  validates :city, presence: true
  validates :picture: presence: true
  validates :link, presence: true, uniqueness: true
  validates :capacity, presence: true
  validates :category, inclusion: { in: CATEGORIES, allow_nil: false }, presence: true
  mount_uploader :photo, PhotoUploader
end
