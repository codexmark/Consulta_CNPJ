# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_08_06_044335) do
  create_table "cnpj_results", force: :cascade do |t|
    t.string "cnpj"
    t.string "razao_social"
    t.string "nome_fantasia"
    t.string "porte"
    t.string "natureza_juridica"
    t.string "situacao_cadastral"
    t.date "data_inicio_atividade"
    t.decimal "capital_social"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.string "municipio"
    t.string "uf"
    t.string "cep"
    t.text "cnaes"
    t.text "socios"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "telefone_1"
    t.string "telefone_2"
  end

end
