class Power < ApplicationRecord
  has_many :curses # creates the method power.monsters
  has_many :monsters, through: :curses # creates the method power.monsters
  has_many :houses, through: :monsters
  validates :name, presence: true, uniqueness: true
end
