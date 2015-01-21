json.array!(@other_symptoms) do |other_symptom|
  json.extract! other_symptom, :id, :symotom_name, :user_id, :diary_id
  json.url other_symptom_url(other_symptom, format: :json)
end
