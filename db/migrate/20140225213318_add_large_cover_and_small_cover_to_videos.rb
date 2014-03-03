class AddLargeCoverAndSmallCoverToVideos < ActiveRecord::Migration
  def change
  	add_column :videos, :large_cover, :string
  	add_column :videos, :small_cover, :string
  	remove_column :videos, :large_image
  	remove_column :videos, :small_image
  end
end
