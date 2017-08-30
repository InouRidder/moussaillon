class AddPicturesToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :pictures, :json
  end
end
