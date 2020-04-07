# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_07_200011) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "people", force: :cascade do |t|
    t.bigint "person_case_id"
    t.string "first_name"
    t.string "last_name"
    t.string "middle_name"
    t.string "full_name"
    t.integer "sex", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_case_id"], name: "index_people_on_person_case_id"
  end

  create_table "person_cases", force: :cascade do |t|
    t.bigint "person_id"
    t.string "first_name_genitive"
    t.string "first_name_dative"
    t.string "first_name_accusative"
    t.string "first_name_instrumental"
    t.string "first_name_prepositional"
    t.string "last_name_genitive"
    t.string "last_name_dative"
    t.string "last_name_accusative"
    t.string "last_name_instrumental"
    t.string "last_name_prepositional"
    t.string "middle_name_genitive"
    t.string "middle_name_dative"
    t.string "middle_name_accusative"
    t.string "middle_name_instrumental"
    t.string "middle_name_prepositional"
    t.string "full_name_genitive"
    t.string "full_name_dative"
    t.string "full_name_accusative"
    t.string "full_name_instrumental"
    t.string "full_name_prepositional"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_person_cases_on_person_id"
  end

end
