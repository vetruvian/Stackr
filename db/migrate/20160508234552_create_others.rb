class CreateOthers < ActiveRecord::Migration
  def change
    create_table :others do |t|
      t.integer :quantity
      t.string :name
      t.string :description
      t.date :dateOfPurchase
      t.decimal :silverContent
      t.decimal :purchasePrice
      t.decimal :spotAtPurchase
      t.string :comments
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
