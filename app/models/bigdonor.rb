class Bigdonor < ActiveRecord::Base
  attr_accessible :int_type, :purpose, :year, :amount
  belongs_to :org


end
