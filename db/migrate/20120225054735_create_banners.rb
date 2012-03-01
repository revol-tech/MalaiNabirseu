class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :image_path
      t.string :banner_title
      t.string :banner_desc

      t.timestamps
    end
  end
end
