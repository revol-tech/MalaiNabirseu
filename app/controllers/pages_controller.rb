class PagesController < ApplicationController
  def index
   	 @whoweare = WhoWeAre.all()
     	 @whatwedo = WhatWeDo.all()
     	 @howtohelp = HowToHelp.all()
    @children = ChildrenSlider.all()
    @banner=Banner.all()

  end

  def about_us
		@children = ChildrenSlider.all()
  end

  def get_involved
		@children = ChildrenSlider.all()

  end

  def events
		@children = ChildrenSlider.all()

  end

  def children
		@children = ChildrenSlider.all()

  end

  def who_we_are
  end

  def what_we_do
			@children = ChildrenSlider.all()

  end

  def how_to_help
  end

  def donate
		@children = ChildrenSlider.all()

  end

	 def site_map
  end

	 def contact
  end
	
	def donate
		@children = ChildrenSlider.all()
		@news = News.all()
  end



end
