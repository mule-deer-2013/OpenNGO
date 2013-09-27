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

ActiveRecord::Schema.define(:version => 20130926204753) do

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations_orgs", :force => true do |t|
    t.integer "org_id"
    t.integer "location_id"
  end

  create_table "orgs", :force => true do |t|
    t.string   "name"
    t.string   "initials"
    t.string   "address"
    t.string   "province"
    t.string   "city"
    t.boolean  "int_branch"
    t.integer  "telephone"
    t.integer  "fax"
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
    t.string   "chief_operator"
    t.string   "chief_title"
    t.string   "board_type"
    t.integer  "num_fte"
    t.integer  "num_pte"
    t.integer  "num_volunteer"
    t.boolean  "code_conduct"
    t.string   "external_auditor"
    t.string   "annual_reporting"
    t.string   "external_prog_eval"
    t.string   "trans_policy"
    t.integer  "num_prog_ind"
    t.integer  "num_prog_org"
    t.integer  "num_prog_pub"
    t.string   "certifier_name1"
    t.string   "certifier_name2"
    t.string   "certifier_title1"
    t.string   "certifier_title2"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
