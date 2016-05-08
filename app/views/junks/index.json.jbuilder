json.array!(@junks) do |junk|
  json.extract! junk, :id, :quantity, :name, :dateOfPurchase, :silverContent, :silverPercentage, :purchasePrice, :spotAtPurchase, :country, :condition, :comments, :user_id
  json.url junk_url(junk, format: :json)
end
