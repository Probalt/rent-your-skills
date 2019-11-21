class Course < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :title, presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false
  validates :price, presence: true, allow_blank: false
  validates :duration, presence: true, allow_blank: false
  validates :location, presence: true, allow_blank: false
  validates :date, presence: true, allow_blank: false
  mount_uploader :photo, PhotoUploader
end
