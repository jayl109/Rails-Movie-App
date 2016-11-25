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

ActiveRecord::Schema.define(version: 20161125225601) do

  create_table "critics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "bio"
  end

  create_table "movies", force: :cascade do |t|
    t.string   "name"
    t.integer  "avg_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies_and_viewers", force: :cascade do |t|
  end

  create_table "movies_viewers", id: false, force: :cascade do |t|
    t.integer "viewer_id"
    t.integer "movie_id"
    t.index ["movie_id"], name: "index_movies_viewers_on_movie_id"
    t.index ["viewer_id"], name: "index_movies_viewers_on_viewer_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.string  "text"
    t.integer "critic_id"
    t.integer "movie_id"
  end

  create_table "viewers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.index ["email"], name: "index_viewers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_viewers_on_reset_password_token", unique: true
  end

  create_table "viewers_and_movies", id: false, force: :cascade do |t|
    t.integer "viewers_id"
    t.integer "movies_id"
    t.index ["movies_id"], name: "index_viewers_and_movies_on_movies_id"
    t.index ["viewers_id"], name: "index_viewers_and_movies_on_viewers_id"
  end

end
