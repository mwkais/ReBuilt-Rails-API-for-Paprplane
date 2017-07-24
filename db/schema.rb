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

ActiveRecord::Schema.define(version: 20170724191029) do

  create_table "post_accesses", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.integer "FriendID"
    t.boolean "Viewed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_post_accesses_on_post_id"
    t.index ["user_id"], name: "index_post_accesses_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "Type"
    t.text "Caption"
    t.text "Content"
    t.integer "Counter"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "user_friends", force: :cascade do |t|
    t.integer "user_id"
    t.integer "Friend_id"
    t.boolean "Pending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Friend_id"], name: "index_user_friends_on_Friend_id"
    t.index ["user_id"], name: "index_user_friends_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "Name"
    t.string "UserName"
    t.string "Email"
    t.string "Password"
    t.date "DateOfBirth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
