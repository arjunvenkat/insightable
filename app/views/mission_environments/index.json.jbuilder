json.array!(@mission_environments) do |mission_environment|
  json.extract! mission_environment, :id, :mission_id, :environment_id
  json.url mission_environment_url(mission_environment, format: :json)
end
