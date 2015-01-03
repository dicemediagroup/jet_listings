class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :phone
      t.string :email_address

      t.timestamps null: false
    end
  end
end
