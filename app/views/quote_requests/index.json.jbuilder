json.array!(@quote_requests) do |quote_request|
  json.extract! quote_request, :id, :full_name, :email, :monthly_rent, :beds, :baths, :start_date, :end_date
  json.url quote_request_url(quote_request, format: :json)
end
