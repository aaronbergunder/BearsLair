json.array!(@spells) do |spell|
  json.extract! spell, :id, :spellsheet_id, :attack, :range, :save, :splevel, :duration, :memorized, :type
  json.url spell_url(spell, format: :json)
end
