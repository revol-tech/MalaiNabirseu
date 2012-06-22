class ChangeDataTypeForFieldname < ActiveRecord::Migration
  def up
  	 change_table :news do |t|
      t.change :news_desc, :text
  		end
  end

  def down
  	change_table :news do |t|
    t.change :news_desc, :string
    end
  end
end
