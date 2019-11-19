json.extract! exercicio, :id, :nome, :descricao, :imagem, :qtd, :created_at, :updated_at
json.url exercicio_url(exercicio, format: :json)
