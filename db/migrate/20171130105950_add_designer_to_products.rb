class AddDesignerToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :designer, :string
  end
end
