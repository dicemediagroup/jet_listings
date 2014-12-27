class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :title
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps null: false
    end
  end
end
