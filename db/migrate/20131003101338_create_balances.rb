class CreateBalances < ActiveRecord::Migration
    def change
      create_table :balances do |t|
        t.integer :assets_total
        t.integer :assets_current
        t.integer :assets_long
        t.integer :liab_current
        t.integer :liab_long
        t.integer :net_equity
        t.date :bal_date
        t.belongs_to :org
      end

      create_table :incomes do |t|
        t.date :start_date
        t.date :end_date
        t.integer :total_revenue
        t.integer :ind_donors
        t.integer :member_fees
        t.integer :govt
        t.integer :companies
        t.integer :int_aid
        t.integer :sales
        t.integer :investments
        t.integer :other
        t.integer :total_expense
        t.integer :program_exp
        t.integer :admin_exp
        t.integer :fundraising_exp
        t.integer :net_income
        t.belongs_to :org
      end

      create_table :bigdonors do |t|
        t.string :inst_name
        t.string :int_type
        t.string :purpose
        t.date :year
        t.integer :amount
        t.belongs_to :org
      end
    end

end
