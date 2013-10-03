class Network < ActiveRecord::Base
  attr_accessible :net_name, :net_scope, :net_status
  belongs_to :org


end
