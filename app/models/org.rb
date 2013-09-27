class Org < ActiveRecord::Base

attr_accessible :name

searchable do
    string :name
  end
end
