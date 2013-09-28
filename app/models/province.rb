class Province < ActiveRecord::Base
  attr_accessible :name

  has_many :locations
  has_many :orgs, through: :locations

end
