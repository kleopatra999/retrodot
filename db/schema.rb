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

ActiveRecord::Schema.define(version: 20160805132331) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "incidents", force: :cascade do |t|
    t.date     "date"
    t.string   "title"
    t.integer  "issue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "remediations", force: :cascade do |t|
    t.date     "date"
    t.string   "description"
    t.boolean  "completed"
    t.string   "pull_request"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "retrospective_id"
    t.index ["retrospective_id"], name: "index_remediations_on_retrospective_id", using: :btree
  end

  create_table "retrospectives", force: :cascade do |t|
    t.date     "date"
    t.string   "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "incident_id"
    t.integer  "remediation_id"
    t.index ["incident_id"], name: "index_retrospectives_on_incident_id", using: :btree
    t.index ["remediation_id"], name: "index_retrospectives_on_remediation_id", using: :btree
  end

end
