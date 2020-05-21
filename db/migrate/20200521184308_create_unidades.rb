class CreateUnidades < ActiveRecord::Migration[6.0]
  def change
    create_table :unidades do |t|
      t.references :cadastro, null: false, foreign_key: true
      t.string :insc_imob
      t.string :insc_imb_anterior
      t.integer :unidade
      t.string :tipo_imovel
      t.string :matricula
      t.string :cod_face
      t.string :quadra
      t.string :lote
      t.string :sub_lote
      t.string :setor
      t.string :loteamento
      t.string :zoneamento
      t.string :logradouro
      t.string :cep
      t.string :numero
      t.string :complemento
      t.text :info_complementar

      t.timestamps
    end
  end
end
