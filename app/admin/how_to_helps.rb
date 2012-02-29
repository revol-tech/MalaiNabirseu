ActiveAdmin.register HowToHelp do
     controller do
      # This code is evaluated within the controller class
  def new
        @how = HowToHelp.new()
        # Instance method
      end

      def update
        @how = HowToHelp.find(params[:id])
        @how.save!
        uploader = ImageUploader.new
        uploader.store!(params[:how_to_help][:image_file])
        @how.how_desc = params[:how_to_help][:how_desc]

        @how.how_image = uploader.to_s
        @how.save!
        redirect_to admin_how_to_helps_path, :notice => "updated successfully!"
      end

        def create
        uploader = ImageUploader.new
        uploader.store!(params[:how_to_help][:image_file])
        @how =HowToHelp.new()
        @how.how_desc = params[:how_to_help][:how_desc]
        @how.how_image = uploader.to_s
        @how.save!
        redirect_to admin_how_to_helps_path, :notice => "updated successfully!"

      end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "HowToHelp" do
      f.input :image_file, :as => :file
      f.input :how_desc
    end
    f.buttons
    end
end
