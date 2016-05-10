class AddStuffToBars < ActiveRecord::Migration
  def change
    add_column :bars, :totalWeight, :decimal
    add_column :bars, :totalQuantity, :integer
  end
end
