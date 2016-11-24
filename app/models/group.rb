class Group < ApplicationRecord
  has_many :users, through: :memberships
  has_many :memberships, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :category
  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  # validates :photo, presence: true
  validates :link, presence: true, uniqueness: true, length: { minimum: 22, maximum: 22 }
  validates :capacity, presence: true
  validates :question, presence: :true
  # validates :category, inclusion: { in: CATEGORIES, allow_nil: false }, presence: true
  mount_uploader :photo, PhotoUploader

  scope :search, ->(search) {
    where("
      title ILIKE ? OR
      description ILIKE ? OR
      location ILIKE ?" ,
      "%#{search}%",
      "%#{search}%",
      "%#{search}%"
    )
  }

  scope :sorted, ->{order(created_at: :desc)}

  def validate_link
    @group.link.present?
  end

end


