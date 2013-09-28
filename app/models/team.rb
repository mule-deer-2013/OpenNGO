class Team < ActiveRecord::Base
attr_accessible :fte, :pte, :volunteers, :authority
belongs_to :org


end
