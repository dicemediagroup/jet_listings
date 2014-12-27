class AddBedToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :bed, :integer
  end
end
