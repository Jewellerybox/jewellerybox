class ClientObserver < ActiveRecord::Observer
	def price_request(client)
		OrderMailer.deliver_order_email(client)
	end
end