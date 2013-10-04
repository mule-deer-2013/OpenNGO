class Balance < ActiveRecord::Base
  attr_accessible :assets_total, :assets_current, :assets_long, :liab_total, :liab_current, :liab_long, :net_equity, :bal_date
  belongs_to :org


end
