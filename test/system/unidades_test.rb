require "application_system_test_case"

class UnidadesTest < ApplicationSystemTestCase
  setup do
    @unidade = unidades(:one)
  end

  test "visiting the index" do
    visit unidades_url
    assert_selector "h1", text: "Unidades"
  end

  test "creating a Unidade" do
    visit unidades_url
    click_on "New Unidade"

    fill_in "Cadastro", with: @unidade.cadastro_id
    fill_in "Cep", with: @unidade.cep
    fill_in "Cod face", with: @unidade.cod_face
    fill_in "Complemento", with: @unidade.complemento
    fill_in "Info complementar", with: @unidade.info_complementar
    fill_in "Insc imb anterior", with: @unidade.insc_imb_anterior
    fill_in "Insc imob", with: @unidade.insc_imob
    fill_in "Logradouro", with: @unidade.logradouro
    fill_in "Lote", with: @unidade.lote
    fill_in "Loteamento", with: @unidade.loteamento
    fill_in "Matricula", with: @unidade.matricula
    fill_in "Numero", with: @unidade.numero
    fill_in "Quadra", with: @unidade.quadra
    fill_in "Setor", with: @unidade.setor
    fill_in "Sub lote", with: @unidade.sub_lote
    fill_in "Tipo imovel", with: @unidade.tipo_imovel
    fill_in "Unidade", with: @unidade.unidade
    fill_in "Zoneamento", with: @unidade.zoneamento
    click_on "Create Unidade"

    assert_text "Unidade was successfully created"
    click_on "Back"
  end

  test "updating a Unidade" do
    visit unidades_url
    click_on "Edit", match: :first

    fill_in "Cadastro", with: @unidade.cadastro_id
    fill_in "Cep", with: @unidade.cep
    fill_in "Cod face", with: @unidade.cod_face
    fill_in "Complemento", with: @unidade.complemento
    fill_in "Info complementar", with: @unidade.info_complementar
    fill_in "Insc imb anterior", with: @unidade.insc_imb_anterior
    fill_in "Insc imob", with: @unidade.insc_imob
    fill_in "Logradouro", with: @unidade.logradouro
    fill_in "Lote", with: @unidade.lote
    fill_in "Loteamento", with: @unidade.loteamento
    fill_in "Matricula", with: @unidade.matricula
    fill_in "Numero", with: @unidade.numero
    fill_in "Quadra", with: @unidade.quadra
    fill_in "Setor", with: @unidade.setor
    fill_in "Sub lote", with: @unidade.sub_lote
    fill_in "Tipo imovel", with: @unidade.tipo_imovel
    fill_in "Unidade", with: @unidade.unidade
    fill_in "Zoneamento", with: @unidade.zoneamento
    click_on "Update Unidade"

    assert_text "Unidade was successfully updated"
    click_on "Back"
  end

  test "destroying a Unidade" do
    visit unidades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Unidade was successfully destroyed"
  end
end
