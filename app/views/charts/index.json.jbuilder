json.array!(@charts) do |chart|
  json.extract! chart, :name, :max_x, :min_x, :max_y, :min_y
  json.url chart_url(chart, format: :json)
end