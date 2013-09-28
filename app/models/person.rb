class Person < ActiveRecord::Base
attr_accessible :name

belongs_to :relationable, polymorphic: true


end
