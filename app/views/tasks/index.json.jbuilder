json.array!(@tasks) do |task|
  json.extract! task, :content, :product_backlog_id, :sprint_task_type_id
  json.url task_url(task, format: :json)
end