class AddItemsToJunks < ActiveRecord::Migration
  def change
    add_column :junks, :entryWeight, :decimal
    add_column :junks, :totalWeight, :decimal
    add_column :junks, :totalQuantity, :integer
  end
end
