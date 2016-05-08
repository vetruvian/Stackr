class CreateJunks < ActiveRecord::Migration
  def change
    create_table :junks do |t|
      t.integer :quantity
      t.string :name
      t.date :dateOfPurchase
      t.decimal :silverContent
      t.decimal :silverPercentage
      t.decimal :purchasePrice
      t.decimal :spotAtPurchase
      t.string :country
      t.string :condition
      t.string :comments
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
