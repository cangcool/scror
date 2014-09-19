json.array!(@default_board_columns) do |default_board_column|
  json.extract! default_board_column, :name, :description, :boardcolumn_type_id
  json.url default_board_column_url(default_board_column, format: :json)
end