class Org < ActiveRecord::Base

attr_accessible :name, :content

searchable :auto_index => true, :auto_remove => true do
    text :name, boost: 5 
  end
end
