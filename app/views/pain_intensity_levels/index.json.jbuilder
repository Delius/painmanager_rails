json.array!(@pain_intensity_levels) do |pain_intensity_level|
  json.extract! pain_intensity_level, :id, :intensity_level, :user_id, :diary_id
  json.url pain_intensity_level_url(pain_intensity_level, format: :json)
end
