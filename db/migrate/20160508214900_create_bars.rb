class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.integer :quantity
      t.string :name
      t.date :dateOfPurchase
      t.decimal :silverContent
      t.integer :mintYear
      t.decimal :purchasePrice
      t.decimal :spotAtPurchase
      t.string :serialNumber
      t.string :country
      t.string :condition
      t.string :comments
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
