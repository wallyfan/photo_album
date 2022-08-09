class AddPhotographerToPhotos < ActiveRecord::Migration[7.0]
  def change
      add_column :photos, :photographer, :string
  end
end
