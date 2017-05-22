class City < ApplicationRecord
  has_many :rooms
  has_many :users, through: :rooms

  def self.country_list
    City.pluck(:country).uniq
  end
end
