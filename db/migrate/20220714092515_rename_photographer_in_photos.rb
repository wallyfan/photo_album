class RenamePhotographerInPhotos < ActiveRecord::Migration[7.0]
  def change
      rename_column :photos, :photographer, :userla
  end
end
