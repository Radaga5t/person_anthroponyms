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
    t.string "firstname"
    t.string "lastname"
    t.string "middlename"
    t.string "fullname"
    t.integer "sex", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_case_id"], name: "index_people_on_person_case_id"
  end

  create_table "person_cases", force: :cascade do |t|
    t.bigint "person_id"
    t.string "firstname_genitive"
    t.string "firstname_dative"
    t.string "firstname_accusative"
    t.string "firstname_instrumental"
    t.string "firstname_prepositional"
    t.string "lastname_genitive"
    t.string "lastname_dative"
    t.string "lastname_accusative"
    t.string "lastname_instrumental"
    t.string "lastname_prepositional"
    t.string "middlename_genitive"
    t.string "middlename_dative"
    t.string "middlename_accusative"
    t.string "middlename_instrumental"
    t.string "middlename_prepositional"
    t.string "fullname_genitive"
    t.string "fullname_dative"
    t.string "fullname_accusative"
    t.string "fullname_instrumental"
    t.string "fullname_prepositional"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_person_cases_on_person_id"
  end

end
