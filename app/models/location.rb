class Location < ActiveRecord::Base
  attr_accessible :name, :org
  has_and_belongs_to_many :orgs
end
