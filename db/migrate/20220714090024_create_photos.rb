class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.date :date
      t.text :description
      t.string :file_location
      t.timestamps
    end
  end
end
