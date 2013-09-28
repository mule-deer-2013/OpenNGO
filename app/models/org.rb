class Org < ActiveRecord::Base

attr_accessible :name, :location
has_and_belongs_to_many :locations

searchable :auto_index => true, :auto_remove => true do
    text :name, boost: 5 
  end
end
