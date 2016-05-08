json.array!(@bars) do |bar|
  json.extract! bar, :id, :quantity, :name, :dateOfPurchase, :silverContent, :mintYear, :purchasePrice, :spotAtPurchase, :serialNumber, :country, :condition, :comments, :user_id
  json.url bar_url(bar, format: :json)
end
