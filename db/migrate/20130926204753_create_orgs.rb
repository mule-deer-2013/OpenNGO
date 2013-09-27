class CreateOrgs < ActiveRecord::Migration
  def change
    create_table :orgs do |t|
      t.string :name
      t.string :initials
      t.string :address
      t.string :province
      t.string :city
      t.boolean :int_branch
      t.integer :telephone
      t.integer :fax
      t.string :email
      t.string :website
      t.date :founding_date
      t.date :starting_date
      t.string :legal_type
      t.integer :legal_num
      t.string :cuit
      t.boolean :vat_exempt
      t.boolean :income_exempt
      t.boolean :tax_ded
      t.text :mission
      t.text :objective
      t.string :chief_operator
      t.string :chief_title
      t.string :board_type
      t.integer :num_fte
      t.integer :num_pte
      t.integer :num_volunteer
      t.boolean :code_conduct
      t.string :external_auditor
      t.string :annual_reporting
      t.string :external_prog_eval
      t.string :trans_policy
      t.integer :num_prog_ind
      t.integer :num_prog_org
      t.integer :num_prog_pub
      t.string :certifier_name1
      t.string :certifier_name2
      t.string :certifier_title1
      t.string :certifier_title2

      t.timestamps
    end


  create_table :provinces do |t|
    t.string :name
  end

  create_table :orgs_provinces do |t|
    t.belongs_to :org
    t.belongs_to :province
  end

 end
end

