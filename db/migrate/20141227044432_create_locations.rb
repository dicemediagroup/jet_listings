class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :neighborhood_id
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps null: false
    end
  end
end
