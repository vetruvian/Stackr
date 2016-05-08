class AddColumnUserIdToCoins < ActiveRecord::Migration
  def change
    add_column :coins, :user_id, :integer
  end
end
