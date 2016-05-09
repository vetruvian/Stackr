json.array!(@others) do |other|
  json.extract! other, :id, :quantity, :name, :description, :dateOfPurchase, :silverContent, :purchasePrice, :spotAtPurchase, :comments, :user_id
  json.url other_url(other, format: :json)
end
