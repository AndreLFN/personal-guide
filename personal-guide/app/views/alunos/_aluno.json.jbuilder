json.extract! aluno, :id, :nome, :altura, :peso, :objetivo, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
