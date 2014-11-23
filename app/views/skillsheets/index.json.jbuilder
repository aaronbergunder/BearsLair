json.array!(@skillsheets) do |skillsheet|
  json.extract! skillsheet, :id, :character_id
  json.url skillsheet_url(skillsheet, format: :json)
end
