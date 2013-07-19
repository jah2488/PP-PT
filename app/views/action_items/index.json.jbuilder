json.array!(@action_items) do |action_item|
  json.extract! action_item, :name, :description, :completed, :in_progress
  json.url action_item_url(action_item, format: :json)
end
