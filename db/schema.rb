# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_20_183808) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "adminpack"
  enable_extension "pgagent"
  enable_extension "plpgsql"

  create_table "alunos", force: :cascade do |t|
    t.string "nome"
    t.decimal "altura"
    t.decimal "peso"
    t.string "objetivo"
    t.integer "idade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "avaliacoes_fisicas", force: :cascade do |t|
    t.integer "aluno_id"
    t.decimal "cintura"
    t.decimal "envergadura"
    t.decimal "peitoral"
    t.decimal "braco"
    t.decimal "coxa"
    t.decimal "gordura_abdomem"
    t.decimal "gordura_braco"
    t.decimal "gordura_coxa"
    t.decimal "flexao"
    t.decimal "agachamento"
    t.decimal "abdominal"
    t.decimal "corrida"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "eventos", force: :cascade do |t|
    t.integer "aluno_id", null: false
    t.string "titulo"
    t.text "descricao"
    t.datetime "data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exercicios", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.string "imagem"
    t.integer "qtd"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tabela_alunos", force: :cascade do |t|
    t.string "nome"
    t.text "altura"
    t.text "peso"
    t.string "objetivo"
    t.integer "cpf"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nome", default: "", null: false
    t.string "sobrenome", default: "", null: false
    t.string "imagem", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.text "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "avaliacoes_fisicas", "alunos", on_delete: :cascade
  add_foreign_key "eventos", "alunos", on_delete: :cascade
end
