class CreateNewsViewers < ActiveRecord::Migration
  def change
    create_table :news_viewers do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
