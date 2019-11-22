class Course < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :title, presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false
  validates :price, presence: true, allow_blank: false
  validates :duration, presence: true, allow_blank: false
  validates :address, presence: true, allow_blank: false
  validates :date, presence: true, allow_blank: false
  validates :participants, presence: true, allow_blank: false
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  mount_uploader :photo, PhotoUploader
end
