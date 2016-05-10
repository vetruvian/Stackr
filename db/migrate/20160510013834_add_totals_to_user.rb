class AddTotalsToUser < ActiveRecord::Migration
  def change
    add_column :users, :totalCoins, :integer
    add_column :users, :totalCoinWeight, :decimal
    add_column :users, :totalBars, :integer
    add_column :users, :totalBarWeight, :decimal
    add_column :users, :totalRounds, :integer
    add_column :users, :totalRoundWeight, :decimal
    add_column :users, :totalJunks, :integer
    add_column :users, :totalJunkWeight, :decimal
    add_column :users, :totalOthers, :integer
    add_column :users, :totalOtherWeight, :decimal
    add_column :users, :totalItems, :integer
    add_column :users, :totalStackWeight, :decimal
  end
end
