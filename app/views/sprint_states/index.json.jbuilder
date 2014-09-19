json.array!(@sprint_states) do |sprint_state|
  json.extract! sprint_state, :name, :description
  json.url sprint_state_url(sprint_state, format: :json)
end