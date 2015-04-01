json.array!(@missions) do |mission|
  json.extract! mission, :id, :date, :company, :customer_point_of_contact
  json.url mission_url(mission, format: :json)
end
