class CreateAvaliacoesFisicas < ActiveRecord::Migration[6.0]
  def change
    create_table :avaliacoes_fisicas do |t|
      t.integer :aluno_id

      t.decimal :cintura
      t.decimal :envergadura
      t.decimal :peitoral
      t.decimal :braco
      t.decimal :coxa
      t.decimal :gordura_abdomem
      t.decimal :gordura_braco
      t.decimal :gordura_coxa
      t.decimal :flexao
      t.decimal :agachamento
      t.decimal :abdominal
      t.decimal :corrida

      t.timestamps
    end

    add_foreign_key :avaliacoes_fisicas, :alunos, column: :aluno_id, primary_key: "id", on_delete: :cascade

  end
end
