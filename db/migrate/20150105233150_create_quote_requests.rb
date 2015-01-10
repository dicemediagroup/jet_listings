class CreateQuoteRequests < ActiveRecord::Migration
  def change
    create_table :quote_requests do |t|
      t.string :full_name
      t.string :email_address
      t.string :monthly_rent
      t.string :beds
      t.string :baths
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
