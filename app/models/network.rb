class Network < ActiveRecord::Base
  attr_accessible :net_name, :net_scope, :net_status
  has_and_belongs_to_many :orgs


end
