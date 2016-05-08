class AddUserIdToCoins < ActiveRecord::Migration
  def change
    add_column :coins, :userId, :integer
  end
end
