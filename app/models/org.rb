class Org < ActiveRecord::Base
  attr_accessible :name, :initials, :address, :telephone
  has_and_belongs_to_many :causes
  has_many :branches
  has_and_belongs_to_many :activities
  has_and_belongs_to_many :ages

  has_one :board
  has_one :advisory
  has_one :team
  has_many :persons, :through => :board
  has_many :persons, :through => :advisor

  has_many :locations
  has_many :provinces, through: :locations

  searchable :auto_index => true, :auto_remove => true do
    text :name, boost: 5
  end
end
