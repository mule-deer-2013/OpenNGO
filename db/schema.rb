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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130928180859) do

  create_table "activities", :force => true do |t|
    t.string "description"
  end

  create_table "activities_orgs", :force => true do |t|
    t.integer "org_id"
    t.integer "activity_id"
  end

  create_table "advisories", :force => true do |t|
    t.integer "org_id"
  end

  create_table "ages", :force => true do |t|
    t.string "description"
  end

  create_table "ages_orgs", :force => true do |t|
    t.integer "org_id"
    t.integer "age_id"
  end

  create_table "boards", :force => true do |t|
    t.string  "btype"
    t.integer "org_id"
  end

  create_table "branches", :force => true do |t|
    t.string  "description"
    t.integer "org_id"
  end

  create_table "causes", :force => true do |t|
    t.string "description"
  end

  create_table "causes_orgs", :force => true do |t|
    t.integer "org_id"
    t.integer "cause_id"
  end

  create_table "locations", :force => true do |t|
    t.boolean "primary"
    t.integer "org_id"
    t.integer "province_id"
  end

  create_table "orgs", :force => true do |t|
    t.string   "name"
    t.string   "initials"
<<<<<<< HEAD
    t.boolean  "display_name"
=======
>>>>>>> first draft org profile page
    t.string   "address"
    t.string   "province"
    t.string   "city"
    t.boolean  "int_branch"
<<<<<<< HEAD
    t.string   "telephone"
    t.string   "fax"
=======
    t.integer  "telephone"
    t.integer  "fax"
>>>>>>> first draft org profile page
    t.string   "email"
    t.string   "website"
    t.date     "founding_date"
    t.date     "starting_date"
    t.string   "legal_type"
    t.integer  "legal_num"
    t.string   "cuit"
    t.boolean  "vat_exempt"
    t.boolean  "income_exempt"
    t.boolean  "tax_ded"
    t.text     "mission"
    t.text     "objective"
    t.integer  "transparency"
    t.string   "trans_policy"
    t.boolean  "code_conduct"
    t.string   "external_auditor"
<<<<<<< HEAD
    t.string   "auditor_name"
=======
>>>>>>> first draft org profile page
    t.string   "annual_reporting"
    t.string   "external_prog_eval"
    t.integer  "num_prog_ind"
    t.integer  "num_prog_org"
    t.integer  "num_prog_pub"
<<<<<<< HEAD
    t.string   "leader_name"
    t.string   "leader_title"
=======
>>>>>>> first draft org profile page
    t.string   "certifier_name1"
    t.string   "certifier_name2"
    t.string   "certifier_title1"
    t.string   "certifier_title2"
<<<<<<< HEAD
    t.integer  "fte"
    t.integer  "pte"
    t.integer  "volunteers"
=======
>>>>>>> first draft org profile page
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "people", :force => true do |t|
    t.string  "name"
    t.string  "in_position"
    t.string  "out_position"
    t.integer "relationable_id"
    t.string  "relationable_type"
  end

  create_table "provinces", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

<<<<<<< HEAD
=======
  create_table "teams", :force => true do |t|
    t.integer "org_id"
    t.string  "authority"
    t.integer "fte"
    t.integer "pte"
    t.integer "volunteers"
  end

>>>>>>> first draft org profile page
end
