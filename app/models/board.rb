class Board < ActiveRecord::Base
attr_accessible :btype

has_many :people, as: :relationable
belongs_to :org


end
