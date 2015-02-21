# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150221095413) do

  create_table "ingredients", force: :cascade do |t|
    t.string   "value"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ingredients", ["title"], name: "index_ingredients_on_title"

  create_table "ingredients_recipes", force: :cascade do |t|
    t.integer "ingredient_id"
    t.integer "recipe_id"
  end

  add_index "ingredients_recipes", ["ingredient_id", "recipe_id"], name: "index_ingredients_recipes_on_ingredient_id_and_recipe_id", unique: true

  create_table "recipes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "ingredients_count"
    t.integer  "cooking_time"
    t.string   "complexity"
    t.boolean  "listed"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "recipes", ["listed"], name: "index_recipes_on_listed"

end
