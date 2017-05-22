class Room < ApplicationRecord
  belongs_to :user
  belongs_to :city

  validates :home_type, presence: true
  validates :room_type, presence: true
  validates :capacity, presence: true
  validates :bed_rooms, presence: true
  validates :bath_rooms, presence: true
  validates :listing_name, presence: true
  validates :summary, presence: true
  validates :address, presence: true
  validates :price, presence: true

  def city_attributes=(city)
    self.city = City.find_or_create_by(name: city[:name])
    self.city.update(city)
  end
end
