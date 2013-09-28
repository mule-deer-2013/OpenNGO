class Org < ActiveRecord::Base
  attr_accessible :name, :initials, :address
  has_and_belongs_to_many :locations
  has_and_belongs_to_many :causes
  has_many :branches
  has_and_belongs_to_many :activities
  has_and_belongs_to_many :ages

  searchable :auto_index => true, :auto_remove => true do
    text :name, boost: 5 
  end
end
