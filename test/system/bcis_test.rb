require "application_system_test_case"

class BcisTest < ApplicationSystemTestCase
  setup do
    @bci = bcis(:one)
  end

  test "visiting the index" do
    visit bcis_url
    assert_selector "h1", text: "Bcis"
  end

  test "creating a Bci" do
    visit bcis_url
    click_on "New Bci"

    check "Agua" if @bci.agua
    fill_in "Ano const", with: @bci.ano_const
    fill_in "Area const", with: @bci.area_const
    fill_in "Area lote", with: @bci.area_lote
    fill_in "Area test", with: @bci.area_test
    fill_in "Classe edif", with: @bci.classe_edif
    check "Coleta lixo" if @bci.coleta_lixo
    fill_in "Data cadastro", with: @bci.data_cadastro
    fill_in "Descricao", with: @bci.descricao
    check "Energia" if @bci.energia
    check "Esgoto" if @bci.esgoto
    check "Guia" if @bci.guia
    check "Iluminacao" if @bci.iluminacao
    fill_in "Material", with: @bci.material
    fill_in "N test", with: @bci.n_test
    fill_in "Nivel rua", with: @bci.nivel_rua
    fill_in "Ocupacao", with: @bci.ocupacao
    fill_in "Padrao", with: @bci.padrao
    check "Pavimentacao" if @bci.pavimentacao
    fill_in "Pavimento", with: @bci.pavimento
    fill_in "Pedologia", with: @bci.pedologia
    fill_in "Profu", with: @bci.profu
    fill_in "Qtd test", with: @bci.qtd_test
    check "Sarjeta" if @bci.sarjeta
    fill_in "Situacao lote", with: @bci.situacao_lote
    check "Telefone" if @bci.telefone
    fill_in "Terreno", with: @bci.terreno
    fill_in "Test direita", with: @bci.test_direita
    fill_in "Test esquerda", with: @bci.test_esquerda
    fill_in "Test frente", with: @bci.test_frente
    fill_in "Test fundos", with: @bci.test_fundos
    fill_in "Tp patrimonio", with: @bci.tp_patrimonio
    fill_in "Unidade", with: @bci.unidade_id
    check "Urbanismo" if @bci.urbanismo
    fill_in "Utilizacao", with: @bci.utilizacao
    fill_in "Valor m terreno", with: @bci.valor_m_terreno
    fill_in "Valor pvg", with: @bci.valor_pvg
    fill_in "Valor venal", with: @bci.valor_venal
    fill_in "Zoneamento", with: @bci.zoneamento
    click_on "Create Bci"

    assert_text "Bci was successfully created"
    click_on "Back"
  end

  test "updating a Bci" do
    visit bcis_url
    click_on "Edit", match: :first

    check "Agua" if @bci.agua
    fill_in "Ano const", with: @bci.ano_const
    fill_in "Area const", with: @bci.area_const
    fill_in "Area lote", with: @bci.area_lote
    fill_in "Area test", with: @bci.area_test
    fill_in "Classe edif", with: @bci.classe_edif
    check "Coleta lixo" if @bci.coleta_lixo
    fill_in "Data cadastro", with: @bci.data_cadastro
    fill_in "Descricao", with: @bci.descricao
    check "Energia" if @bci.energia
    check "Esgoto" if @bci.esgoto
    check "Guia" if @bci.guia
    check "Iluminacao" if @bci.iluminacao
    fill_in "Material", with: @bci.material
    fill_in "N test", with: @bci.n_test
    fill_in "Nivel rua", with: @bci.nivel_rua
    fill_in "Ocupacao", with: @bci.ocupacao
    fill_in "Padrao", with: @bci.padrao
    check "Pavimentacao" if @bci.pavimentacao
    fill_in "Pavimento", with: @bci.pavimento
    fill_in "Pedologia", with: @bci.pedologia
    fill_in "Profu", with: @bci.profu
    fill_in "Qtd test", with: @bci.qtd_test
    check "Sarjeta" if @bci.sarjeta
    fill_in "Situacao lote", with: @bci.situacao_lote
    check "Telefone" if @bci.telefone
    fill_in "Terreno", with: @bci.terreno
    fill_in "Test direita", with: @bci.test_direita
    fill_in "Test esquerda", with: @bci.test_esquerda
    fill_in "Test frente", with: @bci.test_frente
    fill_in "Test fundos", with: @bci.test_fundos
    fill_in "Tp patrimonio", with: @bci.tp_patrimonio
    fill_in "Unidade", with: @bci.unidade_id
    check "Urbanismo" if @bci.urbanismo
    fill_in "Utilizacao", with: @bci.utilizacao
    fill_in "Valor m terreno", with: @bci.valor_m_terreno
    fill_in "Valor pvg", with: @bci.valor_pvg
    fill_in "Valor venal", with: @bci.valor_venal
    fill_in "Zoneamento", with: @bci.zoneamento
    click_on "Update Bci"

    assert_text "Bci was successfully updated"
    click_on "Back"
  end

  test "destroying a Bci" do
    visit bcis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bci was successfully destroyed"
  end
end
