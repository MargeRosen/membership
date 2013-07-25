json.array!(@bands) do |band|
  json.extract! band, :bandname, :genre, :musicians, :wanted, :about
  json.url band_url(band, format: :json)
end
