json.array!(@todos) do |todo|
  json.extract! todo, :id, :title, :due_date, :completed
  json.url todo_url(todo, format: :json)
end