class AddItemsToCoins < ActiveRecord::Migration
  def change
    add_column :coins, :entryWeight, :decimal
    add_column :coins, :totalWeight, :decimal
    add_column :coins, :totalQuantity, :integer
  end
end
