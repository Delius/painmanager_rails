json.array!(@pain_descriptions) do |pain_description|
  json.extract! pain_description, :id, :description_name, :user_id, :diary_id
  json.url pain_description_url(pain_description, format: :json)
end
