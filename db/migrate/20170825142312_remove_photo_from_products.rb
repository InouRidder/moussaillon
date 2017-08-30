class RemovePhotoFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :photo, :string
  end
end
