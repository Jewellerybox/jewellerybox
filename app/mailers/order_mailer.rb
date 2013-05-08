class OrderMailer < ActionMailer::Base
  default from: "office@jewellerybox.bg"

  def order_email(client)
  	recipients 	client.email
  	from		"jewellerybox.bg"
  	subject		"Price request"
  	sent_on		Time.now
  end







end
