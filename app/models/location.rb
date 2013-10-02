class Location < ActiveRecord::Base
  attr_accessible :primary, :province_id, :province
  before_save :default_values
  
  belongs_to :org
  belongs_to :province


  def default_values
    self.primary ||= false
  end
end
