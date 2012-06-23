class UserMailer < ActionMailer::Base


  default :from => "shobhabstha@gmail.com"

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
		mail(:to => "malainabirseu@gmail.com", :subject => "donate").deliver do |format|
  		format.html
		end
	end

	def sponser(input)
	@input = input
		mail(:to => "malainabirseu@gmail.com", :subject => "Sponser").deliver do |format|
  		format.html
		end
	end
end	
