class PagesController < ApplicationController
  def index
    @whoweare = WhoWeAre.all()
     @whatwedo = WhatWeDo.all()
     @howtohelp = HowToHelp.all()
      @children = ChildrenSlider.all()
       @news = News.all()
  end

  def about_us
  end

  def get_involved
  end

  def events
  end

  def children
  end

  def who_we_are
  end

  def what_we_do
  end

  def how_to_help
  end

  def donate
  end

end
