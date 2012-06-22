class CreateWhatWeDos < ActiveRecord::Migration
  def change
    create_table :what_we_dos do |t|
      t.string :image
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
