class PagesController < ApplicationController
  def index
  	@news_viewer =NewsViewer.new()
   	 @whoweare = WhoWeAre.all()
     	 @whatwedo = WhatWeDo.all()
     	 @howtohelp = HowToHelp.all()
    @children = ChildrenSlider.all()
    @banner=Banner.all()
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
		@children = ChildrenSlider.all()
		@news	 = News.order("news_desc").page(params[:page]).per(2)
    respond_to do |format|
      format.html
      format.js
      end
  end

  def get_involved
  	@news_viewer =NewsViewer.new()
		@children = ChildrenSlider.all()
		@news	 = News.order("news_desc").page(params[:page]).per(2)
    respond_to do |format|
      format.html
      format.js
      end

  end

  def events
		@children = ChildrenSlider.all()
    @news_top =News.all()
    @news	 = News.order("news_desc").page(params[:page]).per(2)
    respond_to do |format|
      format.html
      format.js
      end
  end

  def children
		@children = ChildrenSlider.all()
		@news	 = News.order("news_desc").page(params[:page]).per(2)
    respond_to do |format|
      format.html
      format.js
      end

  end

  def who_we_are
  end

  def what_we_do
			@children = ChildrenSlider.all()
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
  end

	 def contact
  end

	def donate
		@news_viewer = NewsViewer.new()
		@children = ChildrenSlider.all()
		@news = News.all()
		@news	 = News.order("news_desc").page(params[:page]).per(2)
    respond_to do |format|
      format.html
      format.js
      end

		def gallary
		@children = ChildrenSlider.all()
		@news = News.all()
  	end

  end



end
