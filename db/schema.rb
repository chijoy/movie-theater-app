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

ActiveRecord::Schema.define(version: 20170801020143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auditoria", force: :cascade do |t|
    t.integer  "movietheater_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  # create_table "customers", force: :cascade do |t|
  #   t.integer  "movie_id"
  #   t.integer  "movietheater_id"
  #   t.string   "first_name"
  #   t.string   "last_name"
  #   t.string   "email"
  #   t.string   "phone"
  #   t.boolean  "text_option"
  #   t.datetime "birthdate"
  #   t.string   "password_digest"
  #   t.datetime "created_at",      null: false
  #   t.datetime "updated_at",      null: false
  # end

  # create_table "movie_theaters", force: :cascade do |t|
  #   t.string   "name"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end

  create_table "movies", force: :cascade do |t|
    t.integer  "auditorium_id"
    t.string   "title"
    t.string   "rating"
    t.string   "female_lead"
    t.string   "male_lead"
    t.integer  "year_released"
    t.integer  "run_time"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "movietheaters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.decimal  "subtotal",   precision: 8, scale: 2
    t.decimal  "tax",        precision: 8, scale: 2
    t.decimal  "total",      precision: 8, scale: 2
  end

  create_table "seats", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "auditorium_id"
  end

  create_table "showtimes", force: :cascade do |t|
    t.integer  "movie_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "start_show_date"
    t.datetime "end_show_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "movietheater_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.boolean  "text_option"
    t.datetime "birthdate"
    t.string   "password_digest"
    t.string   "type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
