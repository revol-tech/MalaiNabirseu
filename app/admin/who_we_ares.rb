ActiveAdmin.register WhoWeAre do

  controller do
      # This code is evaluated within the controller class


      def update
        @Who =  WhoWeAre.find(params[:id])
        @Who.save!
        uploader = ImageUploader.new
        uploader.store!(params[:who_we_are][:image_file])
        @Who.who_desc = params[:who_we_are][:who_desc]

        @Who.who_image = uploader.to_s
        @Who.save!
        redirect_to admin_who_we_ares_path, :notice => "updated successfully!"
      end


        def create
        uploader = ImageUploader.new
        uploader.store!(params[:who_we_are][:image_file])
        @Who = WhoWeAre.new()
        @Who.who_desc = params[:who_we_are][:who_desc]
        @Who.who_image = uploader.to_s
        @Who.save!
        redirect_to admin_who_we_ares_path, :notice => "updated successfully!"

      end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "WhoWeAre" do
      f.input :image_file, :as => :file
      f.input :who_desc
    end
    f.buttons
    end
end
