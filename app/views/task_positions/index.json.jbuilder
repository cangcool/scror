json.array!(@task_positions) do |task_position|
  json.extract! task_position, :task_id, :sprint_board_column_id, :is_block
  json.url task_position_url(task_position, format: :json)
end