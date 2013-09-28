class Branch < ActiveRecord::Base
  attr_accessible :description
  belongs_to :orgs
end
