class Group < ApplicationRecord
  CATEGORIES = ["Sport","Cooking","Vehicles","Pets","Politics","Hobbies","Other"]


  has_many :users, through: :memberships
  has_many :memberships, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :category
  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :photo, presence: true
  validates :link, presence: true, uniqueness: true
  validates :capacity, presence: true
  validates :question, presence: :true
  validates :category, inclusion: { in: CATEGORIES, allow_nil: false }, presence: true
  mount_uploader :photo, PhotoUploader
end
