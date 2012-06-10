class News < ActiveRecord::Base
	after_save :mail
	
	def mail
		UserMailer.registration_confirmation
	end
end
