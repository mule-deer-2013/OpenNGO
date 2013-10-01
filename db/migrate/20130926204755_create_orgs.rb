class CreateOrgs < ActiveRecord::Migration
  def change
    create_table :orgs do |t|
      t.string :name
      t.string :initials
      t.string :preferred_name
      t.string :address
      t.string :province
      t.string :city
      t.boolean :int_branch
      t.string :telephone
      t.string :fax
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
      t.integer :transparency
      t.string :trans_policy
      t.boolean :code_conduct
      t.string :external_auditor
      t.string :auditor_name
      t.string :annual_reporting
      t.string :external_prog_eval
      t.integer :num_prog_ind
      t.integer :num_prog_org
      t.integer :num_prog_pub
      t.string :leader_name
      t.string :leader_title
      t.string :certifier_name1
      t.string :certifier_name2
      t.string :certifier_title1
      t.string :certifier_title2
      t.integer :fte
      t.integer :pte
      t.integer :volunteers
      t.string :youtube
      t.string :twitter

      t.timestamps
    end


#has many through
  create_table :provinces do |t|
    t.string :name

    t.timestamps
  end

  create_table :locations do |t|
    t.boolean :primary
    t.belongs_to :org
    t.belongs_to :province
  end


#Many-to#one
  create_table :branches do |t|
    t.string :description
    t.belongs_to :org
  end

  create_table :objectives do |t|
    t.text :summary
    t.belongs_to :org
  end


#Has and belongs to many
  create_table :causes do |t|
    t.string :description
  end

  create_table :causes_orgs do |t|
    t.belongs_to :org
    t.belongs_to :cause
  end

#has and belongs to many
  create_table :activities do |t|
    t.string :description
  end

  create_table :activities_orgs do |t|
    t.belongs_to :org
    t.belongs_to :activity
  end

#has and belongs to many
  create_table :ages do |t|
    t.string :description
  end

  create_table :ages_orgs do |t|
    t.belongs_to :org
    t.belongs_to :age
  end

#has one
  create_table :legals do |t|
    t.string :legal_type
    t.belongs_to :org
  end


 end
end

