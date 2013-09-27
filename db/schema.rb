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

ActiveRecord::Schema.define(:version => 20130927070951) do

  create_table "orgs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
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
    t.integer  "legal_no"
    t.string   "cuit"
    t.boolean  "vat_exemption"
    t.boolean  "income_exemption"
    t.boolean  "tax_ded_arg"
    t.text     "mission"
    t.text     "objectives"
    t.string   "chief_operator"
    t.string   "chief_operator_title"
    t.string   "board_type"
    t.integer  "no_emp_full"
    t.integer  "no_emp_part"
    t.integer  "no_volunteers_perm"
    t.boolean  "code_conduct"
  end

  add_index "orgs", ["name"], :name => "index_orgs_on_name"

end
