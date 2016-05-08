json.array!(@coins) do |coin|
  json.extract! coin, :id, :quantity, :name, :dateOfPurchase, :silverContent, :mintYear, :purchasePrice, :spotAtPurchase, :country, :condition, :comments
  json.url coin_url(coin, format: :json)
end
