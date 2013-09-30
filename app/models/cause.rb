class Cause < ActiveRecord::Base
  attr_accessible :description
  has_and_belongs_to_many :orgs

  searchable :auto_index => true, :auto_remove => true do
    text :description
  end

end
