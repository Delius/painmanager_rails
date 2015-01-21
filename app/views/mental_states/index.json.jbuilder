json.array!(@mental_states) do |mental_state|
  json.extract! mental_state, :id, :disposition, :stress, :mood_stability, :user_id, :diary_id
  json.url mental_state_url(mental_state, format: :json)
end
