class AddBathToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :bath, :integer
  end
end
