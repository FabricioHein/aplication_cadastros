require 'test_helper'

class CadastrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cadastro = cadastros(:one)
  end

  test "should get index" do
    get cadastros_url
    assert_response :success
  end

  test "should get new" do
    get new_cadastro_url
    assert_response :success
  end

  test "should create cadastro" do
    assert_difference('Cadastro.count') do
      post cadastros_url, params: { cadastro: { bairro: @cadastro.bairro, cep: @cadastro.cep, cidade: @cadastro.cidade, cnh: @cadastro.cnh, complemento: @cadastro.complemento, cpf_cnpj: @cadastro.cpf_cnpj, data_doc: @cadastro.data_doc, estado: @cadastro.estado, logradouro: @cadastro.logradouro, nome: @cadastro.nome, numero: @cadastro.numero, rg_inscr_estadual: @cadastro.rg_inscr_estadual, telefone: @cadastro.telefone } }
    end

    assert_redirected_to cadastro_url(Cadastro.last)
  end

  test "should show cadastro" do
    get cadastro_url(@cadastro)
    assert_response :success
  end

  test "should get edit" do
    get edit_cadastro_url(@cadastro)
    assert_response :success
  end

  test "should update cadastro" do
    patch cadastro_url(@cadastro), params: { cadastro: { bairro: @cadastro.bairro, cep: @cadastro.cep, cidade: @cadastro.cidade, cnh: @cadastro.cnh, complemento: @cadastro.complemento, cpf_cnpj: @cadastro.cpf_cnpj, data_doc: @cadastro.data_doc, estado: @cadastro.estado, logradouro: @cadastro.logradouro, nome: @cadastro.nome, numero: @cadastro.numero, rg_inscr_estadual: @cadastro.rg_inscr_estadual, telefone: @cadastro.telefone } }
    assert_redirected_to cadastro_url(@cadastro)
  end

  test "should destroy cadastro" do
    assert_difference('Cadastro.count', -1) do
      delete cadastro_url(@cadastro)
    end

    assert_redirected_to cadastros_url
  end
end
