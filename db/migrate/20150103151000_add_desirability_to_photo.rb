class AddDesirabilityToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :desirability, :integer, default: 0
  end
end
