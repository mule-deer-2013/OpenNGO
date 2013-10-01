class Legal < ActiveRecord::Base
  attr_accessible :legal_type
  belongs_to :org

  searchable :auto_index => true, :auto_remove => true do
    text :legal_type
  end
end
