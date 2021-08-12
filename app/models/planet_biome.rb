class PlanetBiome < ApplicationRecord
  belongs_to :planet
  belongs_to :biome
  validates :planet, uniqueness: { scope: :biome }
end
