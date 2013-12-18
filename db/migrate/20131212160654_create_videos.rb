class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
    t.string :title, :small_image, :large_image
    t.text :description
    t.timestamps
    end
  end
end
