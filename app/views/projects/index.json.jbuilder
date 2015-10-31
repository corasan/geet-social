json.array!(@projects) do |project|
  json.extract! project, :id, :name, :repo, :description
  json.url project_url(project, format: :json)
end
