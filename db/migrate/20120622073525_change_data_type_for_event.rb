class ChangeDataTypeForEvent < ActiveRecord::Migration
  def up
		change_table :events do |t|
    t.change :event_desc, :text
  	end
	end

  def down
  	change_table :events do |t|
    t.change :event_desc, :string
    end
  end
end
