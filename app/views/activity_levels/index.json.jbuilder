json.array!(@activity_levels) do |activity_level|
  json.extract! activity_level, :id, :act_name, :user_id, :diary_id
  json.url activity_level_url(activity_level, format: :json)
end
