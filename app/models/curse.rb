class Curse < ApplicationRecord
  belongs_to :power
  belongs_to :monster
  validates :power, uniqueness: { scope: :monster }
  # validates :monster, uniqueness: { scope: :power }
end
