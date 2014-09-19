json.array!(@product_backlogs) do |product_backlog|
  json.extract! product_backlog, :content, :sprint_id, :point
  json.url product_backlog_url(product_backlog, format: :json)
end