json.array!(@mission_procedures) do |mission_procedure|
  json.extract! mission_procedure, :id, :mission_id, :procedure_id
  json.url mission_procedure_url(mission_procedure, format: :json)
end
