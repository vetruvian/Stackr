class CreateCoins < ActiveRecord::Migration
  def change
    create_table :coins do |t|
      t.integer :quantity
      t.string :name
      t.date :dateOfPurchase
      t.decimal :silverContent
      t.integer :mintYear
      t.decimal :purchasePrice
      t.decimal :spotAtPurchase
      t.string :country
      t.string :condition
      t.string :comments

      t.timestamps null: false
    end
  end
end
