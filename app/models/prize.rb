class Prize < ActiveRecord::Base
  attr_accessible :prize_name, :prize_date, :prize_giver
  belongs_to :org

  
end
