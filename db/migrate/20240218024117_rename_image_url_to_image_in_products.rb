class RenameImageUrlToImageInProducts < ActiveRecord::Migration[7.1]
  def change
    rename_column :products, :image_url, :image
  end
end
