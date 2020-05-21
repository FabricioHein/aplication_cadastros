json.extract! cadastro, :id, :nome, :cpf_cnpj, :rg_inscr_estadual, :cnh, :data_doc, :telefone, :estado, :cidade, :bairro, :logradouro, :cep, :numero, :complemento, :created_at, :updated_at
json.url cadastro_url(cadastro, format: :json)
