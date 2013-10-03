class Income < ActiveRecord::Base
  attr_accessible :start_date, :end_date, :total_revenue, :ind_donors, :member_fees, :govt, :companies, :int_aid, :sales, :investments, :other 
  attr_accessible :total_expense, :program_exp, :admin_exp, :fundraising_exp, :net_income
  belongs_to :org


end


