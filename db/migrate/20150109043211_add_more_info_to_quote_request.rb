class AddMoreInfoToQuoteRequest < ActiveRecord::Migration
  def change
    add_column :quote_requests, :more_info, :text
  end
end
