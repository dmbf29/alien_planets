class Biome < ApplicationRecord
  has_many :planet_biomes
  has_many :planets, through: :planet_biomes
  validates :name, presence: true

  def to_label
    name.capitalize
  end
end
