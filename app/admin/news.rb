ActiveAdmin.register News do
 controller do
      # This code is evaluated within the controller class


      def new
        @news = News.new()
        # Instance method
      end

      def update
        @news = News.find(params[:id])
        @news.save!
        uploader = ImageUploader.new
        uploader.store!(params[:news][:image_file])
        @news.news_title = params[:news][:news_title]
        @news.news_desc = params[:news][:news_desc]
        @news.news_image = uploader.to_s
        @news.save!
        redirect_to admin_news_path, :notice => "news updated successfully!"
      end

      def create
        uploader = ImageUploader.new
        uploader.store!(params[:news][:image_file])
        @news = News.new()
        @news.news_title = params[:news][:news_title]
        @news.news_desc = params[:news][:news_desc]
        @news.news_image = uploader.to_s
        @news.save!
        redirect_to admin_news_index_path, :notice => "news added successfully!"
      end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "news" do
      f.input :image_file, :as => :file
      f.input :news_title
      f.input :news_desc
    end
    f.buttons
    end

end
