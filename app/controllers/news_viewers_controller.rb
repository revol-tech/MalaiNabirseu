class NewsViewersController < ApplicationController
	def create
		@news_viewer =NewsViewer.create(params[:news_viewer])
		@news_viewer.save!
		redirect_to :back
	end
end
