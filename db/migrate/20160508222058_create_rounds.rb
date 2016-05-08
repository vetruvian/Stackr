class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
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

      t.timestamps null: false
    end
  end
end
