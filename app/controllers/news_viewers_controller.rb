class NewsViewersController < ApplicationController
	def create
		if params[:news_viewer][:name].blank? || params[:news_viewer][:email].blank?
			redirect_to :back,  :notice => "blank"
 			elsif is_a_valid_email?(params[:news_viewer][:email]) == false
 				redirect_to :back,  :notice => "invalid email"
 			else		
				@news_viewer =NewsViewer.create(params[:news_viewer])
				@news_viewer.save!
				redirect_to :back
		end
	end
end
