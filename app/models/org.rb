class Org < ActiveRecord::Base

attr_accessible :name, :location
has_and_belongs_to_many :locations

searchable do
    text :name, boost: 5 
  end
end
