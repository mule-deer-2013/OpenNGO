include ApplicationHelper

class Org < ActiveRecord::Base
  
  has_many :objectives
  has_one :legal
  accepts_nested_attributes_for :objectives, allow_destroy: true
  accepts_nested_attributes_for :legal, allow_destroy: true
  attr_accessible :legal_attributes, :objectives_attributes, :legal, :objectives

  attr_accessible :name, :initials, :preferred_name, :address, :mission, :objective, :transparency 
  attr_accessible :province, :city, :int_branch, :telephone, :fax, :email, :website
  attr_accessible :founding_date, :starting_date, :legal_num, :cuit, :youtube, :twitter
  attr_accessible :income_exempt, :tax_ded, :vat_exempt, :code_conduct, :external_auditor, :auditor_name, :annual_reporting, :external_prog_eval, :trans_policy
  attr_accessible :num_prog_ind, :num_prog_org, :num_prog_pub, :fte, :pte, :volunteers
  attr_accessible :certifier_name1, :certifier_name2, :certifier_title1, :certifier_title2, :leader_name, :leader_title
  
 
  has_and_belongs_to_many :causes
  has_many :branches
  
  has_and_belongs_to_many :activities
  has_and_belongs_to_many :ages
  
  has_one :board
  has_one :advisory

  has_many :people, :through => :board
  has_many :people, :through => :advisory


  has_many :locations
  has_many :provinces, through: :locations

  searchable :auto_index => true, :auto_remove => true do
    text :name, boost: 5
  end



def has_video?
  true  #setting this always to true for now.
  #self.youtube
end





end
