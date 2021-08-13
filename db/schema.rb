# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_12_081202) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aliens", force: :cascade do |t|
    t.string "name"
    t.string "banner_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "biomes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "planet_biomes", force: :cascade do |t|
    t.bigint "planet_id", null: false
    t.bigint "biome_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["biome_id"], name: "index_planet_biomes_on_biome_id"
    t.index ["planet_id"], name: "index_planet_biomes_on_planet_id"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.bigint "alien_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "category"
    t.index ["alien_id"], name: "index_planets_on_alien_id"
  end

  add_foreign_key "planet_biomes", "biomes"
  add_foreign_key "planet_biomes", "planets"
  add_foreign_key "planets", "aliens"
end
