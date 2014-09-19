json.array!(@default_task_types) do |default_task_type|
  json.extract! default_task_type, :name, :color_code
  json.url default_task_type_url(default_task_type, format: :json)
end