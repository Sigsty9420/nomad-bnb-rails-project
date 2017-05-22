class Room < ApplicationRecord
  belongs_to :user

  validates :home_type, presence: true
  validates :room_type, presence: true
  validates :capacity, presence: true
  validates :bed_rooms, presence: true
  validates :bath_rooms, presence: true
  validates :listing_name, presence: true
  validates :summary, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :active, presence: true
  validates :user_id, presence: true
end
