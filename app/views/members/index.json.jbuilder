json.array!(@members) do |member|
  json.extract! member, :user_id, :organization_id, :role
  json.url member_url(member, format: :json)
end
