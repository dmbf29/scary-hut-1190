class HauntedHouse < ApplicationRecord
  has_many :monsters, dependent: :destroy
  validates :name, presence: true
  validates :banner_url, presence: true
end
