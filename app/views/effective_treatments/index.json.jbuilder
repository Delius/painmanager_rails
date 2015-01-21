json.array!(@effective_treatments) do |effective_treatment|
  json.extract! effective_treatment, :id, :name, :user_id, :diary_id
  json.url effective_treatment_url(effective_treatment, format: :json)
end
