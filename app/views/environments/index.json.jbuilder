json.array!(@environments) do |environment|
  json.extract! environment, :id, :name, :desc
  json.url environment_url(environment, format: :json)
end
