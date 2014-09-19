json.array!(@sprint_chart_records) do |sprint_chart_record|
  json.extract! sprint_chart_record, :sprint_board_column_id, :date, :task_total
  json.url sprint_chart_record_url(sprint_chart_record, format: :json)
end