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

ActiveRecord::Schema.define(version: 20171214214738) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beer_lists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "beer_id"
  end

  create_table "beers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "abv"
    t.string "style"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "user_id"
    t.integer "trade_id"
    t.text "content"
  end

  create_table "trade_beers", force: :cascade do |t|
    t.integer "beer_id"
    t.integer "trade_id"
  end

  create_table "trades", force: :cascade do |t|
    t.integer "creator_id"
    t.integer "receiver_id"
    t.integer "creator_beer_id"
    t.integer "receiver_beer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "password_digest"
  end

end
