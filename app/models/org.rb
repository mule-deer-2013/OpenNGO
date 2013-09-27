class Org < ActiveRecord::Base

attr_accessible :name
has_and_belongs_to_many :provinces

searchable do
    text :name, boost: 5 
  end
end
