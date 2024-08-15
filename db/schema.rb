
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
