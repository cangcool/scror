json.array!(@sprint_board_columns) do |sprint_board_column|
  json.extract! sprint_board_column, :name, :description, :sprint_id, :user_id, :boardcolumn_type_id
  json.url sprint_board_column_url(sprint_board_column, format: :json)
end