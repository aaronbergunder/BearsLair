json.array!(@statussheets) do |statussheet|
  json.extract! statussheet, :id, :character_id, :maxhp, :curhp, :speed, :nonlthdmg, :initiative
  json.url statussheet_url(statussheet, format: :json)
end
