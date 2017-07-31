class AddTitleAndDescriptionToScene < ActiveRecord::Migration[5.1]
  def change
    add_column :scenes, :title, :string
    add_column :scenes, :description, :string
  end
end
