json.array!(@board_column_types) do |board_column_type|
  json.extract! board_column_type, :name, :description, :is_charted
  json.url board_column_type_url(board_column_type, format: :json)
end