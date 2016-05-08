json.array!(@rounds) do |round|
  json.extract! round, :id, :quantity, :name, :dateOfPurchase, :silverContent, :mintYear, :purchasePrice, :spotAtPurchase, :serialNumber, :country, :condition, :comments
  json.url round_url(round, format: :json)
end
