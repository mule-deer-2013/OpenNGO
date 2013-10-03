class Advisory < ActiveRecord::Base
attr_accessible :people_attributes

has_many :people, as: :relationable
belongs_to :org

accepts_nested_attributes_for :people
end
