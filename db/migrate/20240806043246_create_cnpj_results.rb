class CreateCnpjResults < ActiveRecord::Migration[6.0]
  def change
    create_table :cnpj_results do |t|
      t.string :cnpj
      t.string :razao_social
      t.string :nome_fantasia
      t.string :porte
      t.string :natureza_juridica
      t.string :situacao_cadastral
      t.date :data_inicio_atividade
      t.decimal :capital_social
      t.string :logradouro
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :municipio
      t.string :uf
      t.string :cep
      t.text :cnaes
      t.text :socios
      t.timestamps
    end
  end
end
