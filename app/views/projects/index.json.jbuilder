json.array!(@projects) do |project|
  json.extract! project, :name, :description, :tags, :completed, :in_progress
  json.url project_url(project, format: :json)
end
