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

ActiveRecord::Schema.define(:version => 20131003101338) do

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

  create_table "affiliations", :force => true do |t|
    t.string "aff_name"
    t.string "aff_type"
    t.string "aff_description"
  end

  create_table "affiliations_orgs", :force => true do |t|
    t.integer "org_id"
    t.integer "affiliation_id"
  end

  create_table "ages", :force => true do |t|
    t.string "description"
  end

  create_table "ages_orgs", :force => true do |t|
    t.integer "org_id"
    t.integer "age_id"
  end

  create_table "balances", :force => true do |t|
    t.integer "assets_total"
    t.integer "assets_current"
    t.integer "assets_long"
    t.integer "liab_current"
    t.integer "liab_long"
    t.integer "net_equity"
    t.date    "bal_date"
    t.integer "org_id"
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

  create_table "incomes", :force => true do |t|
    t.date    "start_date"
    t.date    "end_date"
    t.integer "total_revenue"
    t.integer "ind_donors"
    t.integer "member_fees"
    t.integer "govt"
    t.integer "companies"
    t.integer "int_aid"
    t.integer "sales"
    t.integer "investments"
    t.integer "other"
    t.integer "total_expense"
    t.integer "program_exp"
    t.integer "admin_exp"
    t.integer "fundraising_exp"
    t.integer "net_income"
    t.integer "org_id"
  end

  create_table "instit_donors", :force => true do |t|
    t.string  "inst_name"
    t.string  "int_type"
    t.string  "purpose"
    t.date    "year"
    t.integer "amount"
    t.integer "org_id"
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

  create_table "networks", :force => true do |t|
    t.string "net_name"
    t.string "net_scope"
    t.string "net_status"
  end

  create_table "networks_orgs", :force => true do |t|
    t.integer "org_id"
    t.integer "network_id"
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
    t.string   "linkedin"
    t.string   "facebook"
    t.boolean  "articles_web"
    t.boolean  "articles_office"
    t.boolean  "bylaws_web"
    t.boolean  "bylaws_office"
    t.boolean  "appts_web"
    t.boolean  "appts_office"
    t.boolean  "inscript_web"
    t.boolean  "inscript_office"
    t.boolean  "boardres_web"
    t.boolean  "boardres_office"
    t.boolean  "report_web"
    t.boolean  "report_office"
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

  create_table "prizes", :force => true do |t|
    t.string  "prize_name"
    t.date    "prize_date"
    t.string  "prize_giver"
    t.integer "org_id"
  end

  create_table "programs", :force => true do |t|
    t.string  "pro_name"
    t.string  "pro_goal"
    t.string  "pro_description"
    t.string  "pro_target"
    t.string  "pro_location"
    t.string  "pro_budget"
    t.string  "pro_funding_sources"
    t.string  "pro_affiliations"
    t.string  "pro_metrics"
    t.string  "pro_results"
    t.integer "org_id"
  end

  create_table "provinces", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
