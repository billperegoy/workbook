class ChangeBooksThumbnailToTileImage < ActiveRecord::Migration
  def change
    rename_column :books, :thumbnail, :tile_image
  end
end
