class ApplicationMailer < ActionMailer::Base
  default from: "jetenterprises@me.com"
  layout 'mailer'
  params = {email: "jetenterprises@me.com", subject: "Quote Request"}
  user = OpenStruct.new(params)
end
