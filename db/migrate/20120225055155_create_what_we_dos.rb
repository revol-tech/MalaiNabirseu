class CreateWhatWeDos < ActiveRecord::Migration
  def change
    create_table :what_we_dos do |t|
      t.string :what_we_do_image
      t.string :what_we_do_desc

      t.timestamps
    end
  end
end
