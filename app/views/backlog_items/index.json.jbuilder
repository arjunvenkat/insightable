json.array!(@backlog_items) do |backlog_item|
  json.extract! backlog_item, :id, :backlog_id, :question_id, :position, :assigned_to
  json.url backlog_item_url(backlog_item, format: :json)
end
