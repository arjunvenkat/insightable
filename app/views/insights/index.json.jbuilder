json.array!(@insights) do |insight|
  json.extract! insight, :id, :contents, :insightable_id, :insightable_type
  json.url insight_url(insight, format: :json)
end
