ActiveAdmin.register WhatWeDo do

	 controller do
      # This code is evaluated within the controller class
      def update
        @whatwedo = WhatWeDo.find(params[:id])
        @whatwedo.save!
        uploader = ImageUploader.new
        uploader.store!(params[:what_we_do][:image_file])
        @whatwedo.title = params[:what_we_do][:title]
        @whatwedo.desc = params[:what_we_do][:desc]
        @whatwedo.image = uploader.to_s
        @whatwedo.save!
        redirect_to admin_what_we_dos_path, :notice => "updated successfully!"
      end

      def create
        uploader = ImageUploader.new
        uploader.store!(params[:what_we_do][:image_file])
        @whatwedo = WhatWeDo.new()
        @whatwedo.title = params[:what_we_do][:title]
        @whatwedo.desc = params[:what_we_do][:desc]
        @whatwedo.image = uploader.to_s
        @whatwedo.save!
        redirect_to admin_what_we_dos_path, :notice => "news added successfully!"
      end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "whatwedo" do
      f.input :image_file, :as => :file
      f.input :title
      f.input :desc
    end
    f.buttons
    end
  
end
