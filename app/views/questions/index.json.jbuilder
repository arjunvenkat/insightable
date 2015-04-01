json.array!(@questions) do |question|
  json.extract! question, :id, :contents, :questionable_id, :questionable_type
  json.url question_url(question, format: :json)
end
