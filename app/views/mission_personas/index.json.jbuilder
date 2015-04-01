json.array!(@mission_personas) do |mission_persona|
  json.extract! mission_persona, :id, :mission_id, :persona_id
  json.url mission_persona_url(mission_persona, format: :json)
end
