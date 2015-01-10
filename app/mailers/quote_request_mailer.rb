class QuoteRequestMailer < ApplicationMailer
  
  def quote_request_email(quote_request)
    quote_receiver = Profile.last.email_address || "rocketeer.captproton@gmail.com"
    @quote_request = quote_request
    mail( :to => quote_receiver,
    :subject => 'Super Quote Request' )

  end
end
