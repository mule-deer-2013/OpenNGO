class Objective < ActiveRecord::Base
  attr_accessible :summary
  belongs_to :org
end
