class UserMailer < ActionMailer::Base


  default :from => "ryan@railscasts.com"
  
  def registration_confirmation
  	  @news_viewer = NewsViewer.all
  	  
  	  @news_viewer.each do |t|
    		mail(:to => "#{t.email}", :subject => "News").deliver do |format|
    				format.text
  				
    			end
  			end
	end
	def donation_message(input)
	@input = input
		mail(:to => "shobhabstha@gmail.com", :subject => "donate").deliver do |format|
  		format.html
		end
	end
end	