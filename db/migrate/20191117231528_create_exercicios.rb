class CreateExercicios < ActiveRecord::Migration[6.0]
  def change
    create_table :exercicios do |t|
      t.string :nome
      t.text :descricao
      t.string :imagem
      t.integer :qtd

      t.timestamps
    end
  end
end
