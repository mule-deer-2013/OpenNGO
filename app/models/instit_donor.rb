class Instit_donor < ActiveRecord::Base
  attr_accessible :int_type, :purpose, :year, :amount
  belongs_to :org


end
