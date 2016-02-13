json.array!(@todos) do |todo|
  json.extract! todo, :id, :title, :text, :user_id
  json.url todo_url(todo, format: :json)
end
