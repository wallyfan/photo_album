class Testaddcolumn < ActiveRecord::Migration[7.0]
  def change
    add_column :photos, :price, :float
  end
end
