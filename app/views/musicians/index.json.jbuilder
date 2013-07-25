json.array!(@musicians) do |musician|
  json.extract! musician, :name, :instrument, :genre, :about
  json.url musician_url(musician, format: :json)
end
