require "application_system_test_case"

class CadastrosTest < ApplicationSystemTestCase
  setup do
    @cadastro = cadastros(:one)
  end

  test "visiting the index" do
    visit cadastros_url
    assert_selector "h1", text: "Cadastros"
  end

  test "creating a Cadastro" do
    visit cadastros_url
    click_on "New Cadastro"

    fill_in "Bairro", with: @cadastro.bairro
    fill_in "Cep", with: @cadastro.cep
    fill_in "Cidade", with: @cadastro.cidade
    fill_in "Cnh", with: @cadastro.cnh
    fill_in "Complemento", with: @cadastro.complemento
    fill_in "Cpf cnpj", with: @cadastro.cpf_cnpj
    fill_in "Data doc", with: @cadastro.data_doc
    fill_in "Estado", with: @cadastro.estado
    fill_in "Logradouro", with: @cadastro.logradouro
    fill_in "Nome", with: @cadastro.nome
    fill_in "Numero", with: @cadastro.numero
    fill_in "Rg inscr estadual", with: @cadastro.rg_inscr_estadual
    fill_in "Telefone", with: @cadastro.telefone
    click_on "Create Cadastro"

    assert_text "Cadastro was successfully created"
    click_on "Back"
  end

  test "updating a Cadastro" do
    visit cadastros_url
    click_on "Edit", match: :first

    fill_in "Bairro", with: @cadastro.bairro
    fill_in "Cep", with: @cadastro.cep
    fill_in "Cidade", with: @cadastro.cidade
    fill_in "Cnh", with: @cadastro.cnh
    fill_in "Complemento", with: @cadastro.complemento
    fill_in "Cpf cnpj", with: @cadastro.cpf_cnpj
    fill_in "Data doc", with: @cadastro.data_doc
    fill_in "Estado", with: @cadastro.estado
    fill_in "Logradouro", with: @cadastro.logradouro
    fill_in "Nome", with: @cadastro.nome
    fill_in "Numero", with: @cadastro.numero
    fill_in "Rg inscr estadual", with: @cadastro.rg_inscr_estadual
    fill_in "Telefone", with: @cadastro.telefone
    click_on "Update Cadastro"

    assert_text "Cadastro was successfully updated"
    click_on "Back"
  end

  test "destroying a Cadastro" do
    visit cadastros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cadastro was successfully destroyed"
  end
end
