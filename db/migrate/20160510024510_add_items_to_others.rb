class AddItemsToOthers < ActiveRecord::Migration
  def change
    add_column :others, :entryWeight, :decimal
    add_column :others, :totalWeight, :decimal
    add_column :others, :totalQuantity, :integer
  end
end
