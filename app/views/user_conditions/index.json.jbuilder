json.array!(@user_conditions) do |user_condition|
  json.extract! user_condition, :id, :user_id, :user_condition_diagnosed, :user_condition_description, :user_condition_category
  json.url user_condition_url(user_condition, format: :json)
end
