ActiveAdmin.register ChildrenSlider do
     controller do
      # This code is evaluated within the controller class
          def new
        @child =  ChildrenSlider.new()
        # Instance method
      end

      def update
        @child =  ChildrenSlider.find(params[:id])
        @child.save!
        uploader = ImageUploader.new
        uploader.store!(params[:children_slider][:image_file])
        @child.child_desc = params[:children_slider][:child_desc]

        @child.child_image = uploader.to_s
        @child.save!
        redirect_to admin_children_sliders_path, :notice => "updated successfully!"
      end

        def create
        uploader = ImageUploader.new
        uploader.store!(params[:children_slider][:image_file])
        @child = ChildrenSlider.new()
        @child.child_desc = params[:children_slider][:child_desc]
        @child.child_image = uploader.to_s
        @child.save!
        redirect_to admin_children_sliders_path, :notice => "updated successfully!"

      end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "ChildrenSlider" do
      f.input :image_file, :as => :file
      f.input :child_desc
    end
    f.buttons
    end

end
