class DonatesController < ApplicationController
  def index
  end

  def create
  	if params[:name].blank? || params[:email].blank?
			redirect_to :back,  :notice => "blank"
 			elsif is_a_valid_email?(params[:email]) == false
 				redirect_to :back,  :notice => "invalid email"
 			else		
	 			UserMailer.donation_message(:input=>params)				
	 			redirect_to :back
		end
	end
  
  def sponser
  	if params[:name].blank? || params[:email].blank?
			redirect_to :back,  :notice => "blank"
 			elsif is_a_valid_email?(params[:email]) == false
 				redirect_to :back,  :notice => "invalid email"
 			else		
	 			UserMailer.sponser(:input=>params)
		 	  redirect_to:back
		end
  end  
  
end
