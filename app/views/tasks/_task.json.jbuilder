json.extract! task, :id, :title, :body, :estimate_duration, :budget, :created_at, :updated_at
json.url task_url(task, format: :json)