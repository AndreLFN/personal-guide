class CreateEventos < ActiveRecord::Migration[6.0]
  def change
    create_table :eventos do |t|
      t.integer :aluno_id, null:false

      t.string :titulo
      t.text :descricao
      t.datetime :data
      
      t.timestamps
    end
    add_foreign_key :eventos, :alunos, column: :aluno_id, primary_key: "id", on_delete: :cascade, null:false
  end
end
