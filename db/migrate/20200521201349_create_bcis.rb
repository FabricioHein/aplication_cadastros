class CreateBcis < ActiveRecord::Migration[6.0]
  def change
    create_table :bcis do |t|
      t.references :unidade, null: false, foreign_key: true
      t.datetime :data_cadastro
      t.string :zoneamento
      t.string :tp_patrimonio
      t.string :classe_edif
      t.integer :pavimento
      t.string :padrao
      t.string :utilizacao
      t.string :material
      t.datetime :ano_const
      t.decimal :area_const
      t.decimal :area_lote
      t.decimal :test_frente
      t.decimal :test_direita
      t.decimal :test_fundos
      t.decimal :test_esquerda
      t.decimal :n_test
      t.decimal :area_test
      t.decimal :qtd_test
      t.decimal :profu
      t.boolean :sarjeta
      t.boolean :coleta_lixo
      t.boolean :agua
      t.boolean :esgoto
      t.boolean :iluminacao
      t.boolean :energia
      t.boolean :pavimentacao
      t.boolean :telefone
      t.boolean :guia
      t.string :situacao_lote
      t.string :pedologia
      t.boolean :urbanismo
      t.string :terreno
      t.string :nivel_rua
      t.string :ocupacao
      t.decimal :valor_m_terreno
      t.decimal :valor_venal
      t.decimal :valor_pvg
      t.text :descricao

      t.timestamps
    end
  end
end
