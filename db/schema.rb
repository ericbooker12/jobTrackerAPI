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

ActiveRecord::Schema.define(version: 20171207214410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.string   "company"
    t.date     "date_applied"
    t.boolean  "resume_sent"
    t.boolean  "cover_letter_sent"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.text     "cover_letter"
    t.string   "job_url"
    t.string   "URL"
    t.datetime "not_offered_date"
    t.boolean  "rejected"
    t.boolean  "interview_scheduled"
    t.date     "date_called_for_interview"
    t.date     "interview_date"
  end

  create_table "notes", force: :cascade do |t|
    t.text     "content"
    t.integer  "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_notes_on_job_id", using: :btree
  end

  add_foreign_key "notes", "jobs"
end
