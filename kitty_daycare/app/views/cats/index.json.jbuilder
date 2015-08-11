json.array!(@cats) do |cat|
  json.extract! cat, :id, :name, :breed, :age
  json.url cat_url(cat, format: :json)
end
