class Advisory < ActiveRecord::Base

has_many :people, as: :relationable
belongs_to :org

end
