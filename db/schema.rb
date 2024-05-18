# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_05_18_201331) do
  create_table "follow_requests", force: :cascade do |t|
    t.integer "sent_follow_request"
    t.integer "received_follow_request"
    t.string "request_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meeting_participants", force: :cascade do |t|
    t.integer "meeting_id"
    t.integer "participant_id"
    t.string "status"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.string "meeting_url"
    t.text "description"
    t.boolean "is_virtual"
    t.string "title"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "chairperson_id"
    t.boolean "is_private"
    t.boolean "is_event"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "message_attachments", force: :cascade do |t|
    t.integer "message_id"
    t.string "file_url"
    t.string "file_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer "workspace_id"
    t.text "text_content"
    t.integer "attachments_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "news", force: :cascade do |t|
    t.string "text_content"
    t.integer "journalist_id"
    t.integer "featuring_user_id"
    t.string "category"
    t.integer "branch_id"
    t.integer "news_attachments_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news_attachments", force: :cascade do |t|
    t.integer "news_id"
    t.string "file_url"
    t.string "filetype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_attachments", force: :cascade do |t|
    t.integer "post_id"
    t.string "file_url"
    t.string "file_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_comments", force: :cascade do |t|
    t.integer "post_id"
    t.integer "user_id"
    t.text "comment_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title_task"
    t.text "description"
    t.datetime "task_due"
    t.integer "assigned_by_id"
    t.integer "assigned_to_id"
    t.string "status"
    t.integer "branch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_workspaces", force: :cascade do |t|
    t.integer "user_id"
    t.integer "workspace_id"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "username"
    t.string "email"
    t.string "role"
    t.text "bio"
    t.string "website_link"
    t.string "prof_picture_url"
    t.string "backg_picture_url"
    t.string "linked_in_url"
    t.string "insta_url"
    t.string "faceb_url"
    t.string "x_url"
    t.boolean "privacy_status"
    t.integer "hierarchy_id"
    t.integer "branch_id"
    t.string "country_em"
    t.string "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workspaces", force: :cascade do |t|
    t.string "image_url"
    t.string "title"
    t.text "short_description"
    t.integer "users_count"
    t.integer "messages_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
