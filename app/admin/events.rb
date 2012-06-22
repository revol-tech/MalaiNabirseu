ActiveAdmin.register Event do
	controller do
      # This code is evaluated within the controller class


      def update
        @events = Event.find(params[:id])
        @events.save!
        uploader = ImageUploader.new
        uploader.store!(params[:event][:image_file])
        @events.event_image = params[:Event][:Event_title]
        @events.event_desc = params[:Event][:Event_desc]
        @events.event_image = uploader.to_s
        @events.save!
        redirect_to admin_Event_path, :notice => "Event updated successfully!"
      end

      def create
        uploader = ImageUploader.new
        uploader.store!(params[:event][:image_file])
        @events = Event.new()
        @events.event_title = params[:event][:event_title]
        @events.event_desc = params[:event][:event_desc]
        @events.event_image = uploader.to_s
        @events.save!
        redirect_to admin_events_path, :notice => "Event added successfully!"
      end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "event" do
      f.input :image_file, :as => :file
      f.input :event_title
      f.input :event_desc
    end
    f.buttons
    end
 
end
