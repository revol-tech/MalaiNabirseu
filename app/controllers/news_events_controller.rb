class NewsEventsController < ApplicationController
  def news_details
		@children = ChildrenSlider.all()
		@news = News.all()
  end

  def events_details
			@children = ChildrenSlider.all()
			@news = News.all()
  end

  def news
		@children = ChildrenSlider.all()
			@news = News.all()
  end


end
