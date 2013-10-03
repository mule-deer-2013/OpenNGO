class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :pro_name
      t.string :pro_goal
      t.string :pro_description
      t.string :pro_target
      t.string :pro_location
      t.string :pro_budget
      t.string :pro_funding_sources
      t.string :pro_affiliations
      t.string :pro_metrics
      t.string :pro_results
      t.belongs_to :org
    end
  end
end
