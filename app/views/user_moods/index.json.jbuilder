json.array!(@user_moods) do |user_mood|
  json.extract! user_mood, :id, :user_id, :user_mood_name
  json.url user_mood_url(user_mood, format: :json)
end
