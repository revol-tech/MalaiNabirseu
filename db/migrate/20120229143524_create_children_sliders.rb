class CreateChildrenSliders < ActiveRecord::Migration
  def change
    create_table :children_sliders do |t|
      t.string :child_image

      t.string :child_desc

      t.timestamps
    end
  end
end
