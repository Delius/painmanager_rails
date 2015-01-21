json.array!(@pain_durations) do |pain_duration|
  json.extract! pain_duration, :id, :duration_level, :user_id, :diary_id
  json.url pain_duration_url(pain_duration, format: :json)
end
