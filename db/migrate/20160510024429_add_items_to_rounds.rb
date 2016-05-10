class AddItemsToRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :entryWeight, :decimal
    add_column :rounds, :totalWeight, :decimal
    add_column :rounds, :totalQuantity, :integer
  end
end
