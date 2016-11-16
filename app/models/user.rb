class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :omniauthable, omniauth_providers: [:facebook]

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :groups, through: :memberships
  has_many :memebership_requests
  has_many :comments, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates :location, presence: true
  # validates :photo, presence: true
  validates :email, presence: true, uniqueness: true
  # validates :mobile, presence: true, uniqueness: true
  mount_uploader :photo, PhotoUploader
 def self.find_for_facebook_oauth(auth)
  user_params = auth.to_h.slice(:provider, :uid)
  user_params.merge! auth.info.slice(:email, :first_name, :last_name)
  user_params[:facebook_picture_url] = auth.info.image
  user_params[:token] = auth.credentials.token
  user_params[:token_expiry] = Time.at(auth.credentials.expires_at)

  user = User.where(provider: auth.provider, uid: auth.uid).first
    user ||= User.where(email: auth.info.email).first # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end

    return user
  end
end
