class AddUserIdToOrgs < ActiveRecord::Migration
  def change
  	add_column :orgs, :user_id, :integer, references: :users
  end
end
