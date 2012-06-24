class PagesController < ApplicationController
  def index
  	@niraj = Niraj.all()
  	@news_viewer =NewsViewer.new()
    @news	 = News.order("news_desc").page(params[:page]).per(2)
    respond_to do |format|
      format.html
      format.js
      end

  end

	def news_paginator
     @news = News.order("news_desc").page(params[:page]).per(2)
     respond_to do |format|
      format.html
      format.js
    end
  end

  def about_us
		@news_viewer =NewsViewer.new()
		@news	 = News.order("news_desc").page(params[:page]).per(2)
    respond_to do |format|
      format.html
      format.js
      end
  end

  def get_involved
  	@news_viewer =NewsViewer.new()
		@news	 = News.order("news_desc").page(params[:page]).per(2)
    respond_to do |format|
      format.html
      format.js
      end

  end

  def events
		@news_viewer =NewsViewer.new()
    @news_top =News.all()
    @news	 = News.order("news_desc").page(params[:page]).per(2)
    respond_to do |format|
      format.html
      format.js
      end
  end

  def children
		@news_viewer =NewsViewer.new()
		@news	 = News.order("news_desc").page(params[:page]).per(2)
    respond_to do |format|
      format.html
      format.js
      end

  end

  def who_we_are
  end

  def what_we_do
			@news_viewer =NewsViewer.new()
			@whatwedo = WhatWeDo.all()
			@news	 = News.order("news_desc").page(params[:page]).per(2)
    respond_to do |format|
      format.html
      format.js
      end
		@news_viewer = NewsViewer.new()
	end

  def how_to_help
  end



	 def site_map
			@news_viewer =NewsViewer.new()
			@news	 = News.order("news_desc").page(params[:page]).per(2)
    respond_to do |format|
      format.html
      format.js
      end

  end

	 def contact
	@news_viewer =NewsViewer.new()
			@news	 = News.order("news_desc").page(params[:page]).per(2)
    respond_to do |format|
      format.html
      format.js
      end
  end

	def donate
		@news_viewer = NewsViewer.new()
		@news = News.all()
		@news	 = News.order("news_desc").page(params[:page]).per(2)
    respond_to do |format|
      format.html
      format.js
      end

		def gallary
		@news = News.all()
  	end

  end



end
