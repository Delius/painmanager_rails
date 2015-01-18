json.array!(@pain_onset_trackers) do |pain_onset_tracker|
  json.extract! pain_onset_tracker, :id, :diary_id, :pain_onset_speed
  json.url pain_onset_tracker_url(pain_onset_tracker, format: :json)
end
