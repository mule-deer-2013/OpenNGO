class AddContentColumn < ActiveRecord::Migration
  def change
  	add_column :orgs, :content, :text
  end
end
