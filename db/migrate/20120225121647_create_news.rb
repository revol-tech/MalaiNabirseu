class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :news_image
      t.string :news_title
      t.string :news_desc

      t.timestamps
    end
  end
end
