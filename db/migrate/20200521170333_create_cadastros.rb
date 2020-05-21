class CreateCadastros < ActiveRecord::Migration[6.0]
  def change
    create_table :cadastros do |t|
      t.string :nome
      t.string :cpf_cnpj
      t.string :rg_inscr_estadual
      t.string :cnh
      t.datetime :data_doc
      t.string :telefone
      t.string :estado
      t.string :cidade
      t.string :bairro
      t.string :logradouro
      t.string :cep
      t.string :numero
      t.string :complemento

      t.timestamps
    end
  end
end
