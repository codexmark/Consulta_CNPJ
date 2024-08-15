class AddTelefonesToCnpjResults < ActiveRecord::Migration[7.1]
  def change
    add_column :cnpj_results, :telefone_1, :string
    add_column :cnpj_results, :telefone_2, :string
  end
end
