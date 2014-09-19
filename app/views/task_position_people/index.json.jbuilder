json.array!(@task_position_people) do |task_position_person|
  json.extract! task_position_person, :task_position_id, :user_id, :assigner_id
  json.url task_position_person_url(task_position_person, format: :json)
end