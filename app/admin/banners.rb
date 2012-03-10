ActiveAdmin.register Banner do
  controller do
      # This code is evaluated within the controller class


      def new
        @banner = Banner.new()
        # Instance method
      end

      def update
        @banner = Banner.find(params[:id])
        @banner.save!
        uploader = ImageUploader.new
        uploader.store!(params[:banner][:image_file])

        @banner.banner_desc = params[:banner][:banner_desc]
        @banner.image_path = uploader.to_s
        @banner.save!
        redirect_to admin_banner_path, :notice => "banner updated successfully!"
      end

      def create
        uploader = ImageUploader.new
        uploader.store!(params[:banner][:image_file])
        @banner = Banner.new()

        @banner.banner_desc = params[:banner][:banner_desc]
        @banner.image_path = uploader.to_s
        @banner.save!
        redirect_to admin_banner_path, :notice => "banner added successfully!"
      end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "banner" do
      f.input :image_file, :as => :file

      f.input :banner_desc
    end
    f.buttons
    end
end
