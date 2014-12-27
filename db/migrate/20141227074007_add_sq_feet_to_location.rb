class AddSqFeetToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :sq_feet, :integer
  end
end
