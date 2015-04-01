json.array!(@mission_memberships) do |mission_membership|
  json.extract! mission_membership, :id, :user_id, :mission_id
  json.url mission_membership_url(mission_membership, format: :json)
end
