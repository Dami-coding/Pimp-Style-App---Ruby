json.array!(@saloons) do |saloon|
  json.extract! saloon, :id, :name, :description, :tel_number, :price
  json.url saloon_url(saloon, format: :json)
end
