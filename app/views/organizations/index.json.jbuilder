json.array!(@organizations) do |organization|
  json.extract! organization, :location, :name, :date
  json.url organization_url(organization, format: :json)
end
