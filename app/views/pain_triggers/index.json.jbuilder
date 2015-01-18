json.array!(@pain_triggers) do |pain_trigger|
  json.extract! pain_trigger, :id, :name, :user_id, :diary_id, :diary_id, :user_id
  json.url pain_trigger_url(pain_trigger, format: :json)
end
