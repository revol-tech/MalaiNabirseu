class PagesController < ApplicationController
  def index
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

  end

  def how_to_help
  end



	 def site_map
  end

	 def contact
  end

	def donate
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
