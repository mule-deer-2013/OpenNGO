class Affiliation < ActiveRecord::Base
  attr_accessible :aff_name, :aff_type, :aff_description
  belongs_to :org


  validates :aff_type, :inclusion => %w(International Foundation, Business, National Foundation, International Government, Local Government,
  International Organization, ONG, Educational Institution)
end
