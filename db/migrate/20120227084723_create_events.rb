class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_image
      t.string :event_title
      t.string :event_desc

      t.timestamps
    end
  end
end
