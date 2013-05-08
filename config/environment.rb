# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Jewellerybox::Application.initialize!

#This is for the Mailer using the observer way
Rails::Initializer.run do |config|
	config.active_record.observers = :client_observer
end