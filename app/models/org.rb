class Org < ActiveRecord::Base

attr_accessible :name, :content

searchable do
    text :name, boost: 5 
  end
end
