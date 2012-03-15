class PagesController < ApplicationController
  def index
    @whoweare = WhoWeAre.all()
     @whatwedo = WhatWeDo.all()
     @howtohelp = HowToHelp.all()
      @children = ChildrenSlider.all()
       @news = News.all()
       @banner=Banner.all()
  end

  def about_us
		@children = ChildrenSlider.all()
		@news = News.all()
  end

  def get_involved
  end

  def events
		@children = ChildrenSlider.all()
		@news = News.all()
  end

  def children
		@children = ChildrenSlider.all()
		@news = News.all()
  end

  def who_we_are
  end

  def what_we_do
  end

  def how_to_help
  end

  def donate
  end

	 def site_map
  end

	 def contact
  end




end
