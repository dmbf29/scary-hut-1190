class Monster < ApplicationRecord
  belongs_to :haunted_house
  # moth_man.destroy -> it also destroys all curses for that monster
  has_many :curses, dependent: :destroy
  has_many :powers, through: :curses # moth_man.powers
  validates :name, presence: true
end
