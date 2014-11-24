json.array!(@spellsheets) do |spellsheet|
  json.extract! spellsheet, :id, :character_id
  json.url spellsheet_url(spellsheet, format: :json)
end
