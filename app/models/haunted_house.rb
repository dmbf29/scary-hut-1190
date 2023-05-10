class HauntedHouse < ApplicationRecord
  has_many :monsters, dependent: :destroy # creates the .monsters method
  validates :name, presence: true
  validates :banner_url, presence: true
end
