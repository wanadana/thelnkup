class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 has_many :groups, through: :memberships
 has_many :memebership_requests
 has_many :comments, dependent: :destroy
 validates :first_name, presence: true
 validates :last_name, presence: true
 validates :location, presence: true
 # validates :photo, presence: true
 validates :email, presence: true, uniqueness: true
 validates :mobile, presence: true, uniqueness: true
 # mount_uploader :photo, PhotoUploader
end
