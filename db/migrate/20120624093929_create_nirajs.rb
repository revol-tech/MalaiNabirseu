class CreateNirajs < ActiveRecord::Migration
  def change
    create_table :nirajs do |t|
      t.string :name

      t.timestamps
    end
  end
end
