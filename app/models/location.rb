class Location < ActiveRecord::Base
  attr_accessible :primary
  
  belongs_to :org
  belongs_to :province
end
