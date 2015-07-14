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

ActiveRecord::Schema.define(version: 20150714015130) do

  create_table "founders", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url",  default: "http://ia.media-imdb.com/images/M/MV5BMTk2MDg2NjMzM15BMl5BanBnXkFtZTgwMzk0NTc5MjE@._V1_SY317_CR104,0,214,317_AL_.jpg"
    t.string   "quote"
    t.datetime "created_at",                                                                                                                                  null: false
    t.datetime "updated_at",                                                                                                                                  null: false
  end

  create_table "password_resets", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "token"
    t.datetime "used"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personal_traits", force: :cascade do |t|
    t.integer  "founder_id"
    t.integer  "trait_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "personal_traits", ["founder_id"], name: "index_personal_traits_on_founder_id"
  add_index "personal_traits", ["trait_id"], name: "index_personal_traits_on_trait_id"

  create_table "traits", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
