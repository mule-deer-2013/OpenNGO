class Program < ActiveRecord::Base
  attr_accessible :name, :pro_name, :pro_goal, :pro_description,:pro_target, :pro_location 
  attr_accessible :pro_budget, :pro_funding_sources, :pro_affiliations, :pro_metrics, :pro_results

  belongs_to :org
end
