class Person < ActiveRecord::Base
  attr_accessible :name, :in_position, :out_position, :relationable_id, :relationable_type

  belongs_to :relationable, polymorphic: true

end
