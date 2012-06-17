class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def is_a_valid_email?(email)
  # Check the number of '@' signs.
  	if email.count("@") != 1 then
    	return false
	# We can now check the email using a simple regex.
  # You can replace the TLD's at the end with the TLD's you wish
  # to accept.
  	elsif email =~ /^[a-zA-Z0-9][a-zA-Z0-9\._%\-\+]+@[a-zA-Z0-9\.\-]+\.[a-zA-Z]+$/ then
    	return true
  	else
    	return false
  	end
	end	 
end
