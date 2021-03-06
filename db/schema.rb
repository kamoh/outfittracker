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

ActiveRecord::Schema.define(version: 20140813211942) do

  create_table "clothing_article_outfits", force: true do |t|
    t.integer  "clothing_article_id"
    t.integer  "outfit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clothing_article_outfits", ["clothing_article_id"], name: "index_clothing_article_outfits_on_clothing_article_id"
  add_index "clothing_article_outfits", ["outfit_id"], name: "index_clothing_article_outfits_on_outfit_id"

  create_table "clothing_articles", force: true do |t|
    t.string   "description"
    t.string   "color"
    t.integer  "clothing_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "user_id"
  end

  add_index "clothing_articles", ["clothing_category_id"], name: "index_clothing_articles_on_clothing_category_id"
  add_index "clothing_articles", ["user_id"], name: "index_clothing_articles_on_user_id"

  create_table "clothing_categories", force: true do |t|
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friends", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "friends", ["user_id"], name: "index_friends_on_user_id"

  create_table "outfits", force: true do |t|
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "outfits", ["user_id"], name: "index_outfits_on_user_id"

  create_table "recommendations", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recommendations", ["user_id"], name: "index_recommendations_on_user_id"

  create_table "sightings", force: true do |t|
    t.integer  "outfit_id"
    t.integer  "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sightings", ["friend_id"], name: "index_sightings_on_friend_id"
  add_index "sightings", ["outfit_id"], name: "index_sightings_on_outfit_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
