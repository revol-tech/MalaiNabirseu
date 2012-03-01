class CreateWhoWeAres < ActiveRecord::Migration
  def change
    create_table :who_we_ares do |t|
      t.string :who_image
      t.string :who_desc

      t.timestamps
    end
  end
end
