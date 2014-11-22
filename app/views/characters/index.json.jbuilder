json.array!(@characters) do |character|
  json.extract! character, :id, :name, :alignment
  json.url character_url(character, format: :json)
end
