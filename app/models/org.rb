class Org < ActiveRecord::Base

attr_accessible :name, :content

searchable do
    text :name, :content
  end
end
