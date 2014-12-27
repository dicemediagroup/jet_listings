class CreateAmenities < ActiveRecord::Migration
  def change
    create_table :amenities do |t|
      t.string :title
      t.integer :neighborhood_id

      t.timestamps null: false
    end
  end
end
