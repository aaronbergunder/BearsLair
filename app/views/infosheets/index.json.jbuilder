json.array!(@infosheets) do |infosheet|
  json.extract! infosheet, :id
  json.url infosheet_url(infosheet, format: :json)
end
