ActiveAdmin.register WhatWeDo do
 controller do
      # This code is evaluated within the controller class
  def new
        @What =  WhatWeDo.new()
        # Instance method
      end

      def update
        @What =  WhatWeDo.find(params[:id])
        @What.save!
        uploader = ImageUploader.new
        uploader.store!(params[:what_we_do][:image_file])
        @What.what_we_do_desc = params[:what_we_do][:what_we_do_desc]

        @What.what_we_do_image = uploader.to_s
        @What.save!
        redirect_to admin_what_we_dos_path, :notice => "updated successfully!"
      end

        def create
        uploader = ImageUploader.new
        uploader.store!(params[:what_we_do][:image_file])
        @What = WhatWeDo.new()
        @What.what_we_do_desc = params[:what_we_do][:what_we_do_desc]
        @What.what_we_do_image = uploader.to_s
        @What.save!
        redirect_to admin_what_we_dos_path, :notice => "updated successfully!"

      end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "WhatWeDo" do
      f.input :image_file, :as => :file
      f.input :what_we_do_desc
    end
    f.buttons
    end

end
