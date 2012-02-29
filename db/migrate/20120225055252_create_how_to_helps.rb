class CreateHowToHelps < ActiveRecord::Migration
  def change
    create_table :how_to_helps do |t|
      t.string :how_image
      t.string :how_desc

      t.timestamps
    end
  end
end
