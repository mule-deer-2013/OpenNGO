class AddColumnsOrgs < ActiveRecord::Migration
 def change
        add_column :orgs, :initials, :string
        add_column :orgs, :address, :string
        add_column :orgs, :province, :string
        add_column :orgs, :city, :string
        add_column :orgs, :int_branch, :boolean

        add_column :orgs, :telephone, :integer
        add_column :orgs, :fax, :integer
        add_column :orgs, :email, :string
        add_column :orgs, :website, :string
        add_column :orgs, :founding_date, :date
        add_column :orgs, :starting_date, :date
        add_column :orgs, :legal_type, :string
        add_column :orgs, :legal_no, :integer
        add_column :orgs, :cuit, :string
        add_column :orgs, :vat_exemption, :boolean
        add_column :orgs, :income_exemption, :boolean
        add_column :orgs, :tax_ded_arg, :boolean
        add_column :orgs, :mission, :text
        add_column :orgs, :objectives, :text
        add_column :orgs, :chief_operator, :string
        add_column :orgs, :chief_operator_title, :string
        add_column :orgs, :board_type, :string
        add_column :orgs, :no_emp_full, :integer
        add_column :orgs, :no_emp_part, :integer
        add_column :orgs, :no_volunteers_perm, :integer
        add_column :orgs, :code_conduct, :boolean

        add_column :orgs, :external_auditor, :string
        add_column :orgs, :annual_financials, :string
        add_column :orgs, :external_program_audit, :string
        add_column :orgs, :written_trans_policy, :string
        add_column :orgs, :num_programs_indv, :integer
        add_column :orgs, :num_programs_orgs, :integer
        add_column :orgs, :num_programs_public, :integer

        add_column :orgs, :certifier_name1, :string
        add_column :orgs, :certifier_name2, :string
        add_column :orgs, :certifier_title1, :string
        add_column :orgs, :certifier_title2, :string

  end
end
