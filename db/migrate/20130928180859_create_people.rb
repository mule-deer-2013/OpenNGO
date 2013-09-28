class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :in_position
      t.string :out_position
      t.references :relationable, polymorphic: true
    end


    create_table :boards do |t|
      t.string :btype
      t.belongs_to :org
    end

    create_table :advisories do |t|
      t.belongs_to :org
    end

    create_table :teams do |t|
      t.belongs_to :org
      t.string :authority
      t.integer :fte
      t.integer :pte
      t.integer :volunteers
    end



end
end

