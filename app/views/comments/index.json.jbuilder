json.array!(@comments) do |comment|
  json.extract! comment, :content, :user_id, :photo_id
  json.url comment_url(comment, format: :json)
end
