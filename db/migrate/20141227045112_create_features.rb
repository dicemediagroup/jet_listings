class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :title
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
