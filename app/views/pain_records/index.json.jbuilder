json.array!(@pain_records) do |pain_record|
  json.extract! pain_record, :id, :user_id, :pain_record_description, :pain_record_pain_level, :pain_record_pain_placement, :pain_record_pain_type, :pain_record_pain_duration
  json.url pain_record_url(pain_record, format: :json)
end
