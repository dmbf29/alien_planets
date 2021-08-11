class CreatePlanets < ActiveRecord::Migration[6.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :type
      t.string :image_url
      t.references :alien, null: false, foreign_key: true

      t.timestamps
    end
  end
end
