class CreatePlanetBiomes < ActiveRecord::Migration[6.0]
  def change
    create_table :planet_biomes do |t|
      t.references :planet, null: false, foreign_key: true
      t.references :biome, null: false, foreign_key: true

      t.timestamps
    end
  end
end
