class QuoteRequestMailer < ApplicationMailer
  
  def quote_request_email(quote_request)
    @quote_request = quote_request
    mail( :to => "carl@wdwhub.net",
    :subject => 'Super Quote Request' )

  end
end
