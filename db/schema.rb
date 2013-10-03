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

ActiveRecord::Schema.define(:version => 20131003012057) do

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

  create_table "legals", :force => true do |t|
    t.string  "legal_type"
    t.integer "org_id"
  end

  create_table "locations", :force => true do |t|
    t.boolean "primary"
    t.integer "org_id"
    t.integer "province_id"
  end

  create_table "objectives", :force => true do |t|
    t.text    "summary"
    t.integer "org_id"
  end

  create_table "orgs", :force => true do |t|
    t.string   "name"
    t.string   "initials"
    t.string   "preferred_name"
    t.string   "logo_url"
    t.string   "address"
    t.string   "city"
    t.boolean  "int_branch"
    t.string   "telephone"
    t.string   "fax"
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
    t.integer  "transparency"
    t.string   "trans_policy"
    t.boolean  "code_conduct"
    t.boolean  "external_auditor"
    t.string   "auditor_name"
    t.boolean  "annual_reporting"
    t.boolean  "external_prog_eval"
    t.integer  "num_prog_ind"
    t.integer  "num_prog_org"
    t.integer  "num_prog_pub"
    t.string   "leader_name"
    t.string   "leader_title"
    t.string   "certifier_name1"
    t.string   "certifier_name2"
    t.string   "certifier_title1"
    t.string   "certifier_title2"
    t.integer  "fte"
    t.integer  "pte"
    t.integer  "volunteers"
    t.string   "youtube"
    t.string   "twitter"
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

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
