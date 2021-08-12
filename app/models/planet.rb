class Planet < ApplicationRecord
  belongs_to :alien
  has_many :planet_biomes
  # planet.planet_biomes
  has_many :biomes, through: :planet_biomes
  validates :name, presence: true
end
