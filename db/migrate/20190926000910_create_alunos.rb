class CreateAlunos < ActiveRecord::Migration[6.0]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.decimal :altura
      t.decimal :peso
      t.string :objetivo
      t.integer :idade


      t.timestamps
    end
  end
end
