json.extract! evento, :id, :titulo, :descricao, :data, :created_at, :updated_at
json.url evento_url(evento, format: :json)
