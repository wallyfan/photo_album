class RemoveUserFromPhotos < ActiveRecord::Migration[7.0]
  def change
    remove_column :photos, :userla
  end
end
