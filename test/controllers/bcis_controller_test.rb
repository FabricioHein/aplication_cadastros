require 'test_helper'

class BcisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bci = bcis(:one)
  end

  test "should get index" do
    get bcis_url
    assert_response :success
  end

  test "should get new" do
    get new_bci_url
    assert_response :success
  end

  test "should create bci" do
    assert_difference('Bci.count') do
      post bcis_url, params: { bci: { agua: @bci.agua, ano_const: @bci.ano_const, area_const: @bci.area_const, area_lote: @bci.area_lote, area_test: @bci.area_test, classe_edif: @bci.classe_edif, coleta_lixo: @bci.coleta_lixo, data_cadastro: @bci.data_cadastro, descricao: @bci.descricao, energia: @bci.energia, esgoto: @bci.esgoto, guia: @bci.guia, iluminacao: @bci.iluminacao, material: @bci.material, n_test: @bci.n_test, nivel_rua: @bci.nivel_rua, ocupacao: @bci.ocupacao, padrao: @bci.padrao, pavimentacao: @bci.pavimentacao, pavimento: @bci.pavimento, pedologia: @bci.pedologia, profu: @bci.profu, qtd_test: @bci.qtd_test, sarjeta: @bci.sarjeta, situacao_lote: @bci.situacao_lote, telefone: @bci.telefone, terreno: @bci.terreno, test_direita: @bci.test_direita, test_esquerda: @bci.test_esquerda, test_frente: @bci.test_frente, test_fundos: @bci.test_fundos, tp_patrimonio: @bci.tp_patrimonio, unidade_id: @bci.unidade_id, urbanismo: @bci.urbanismo, utilizacao: @bci.utilizacao, valor_m_terreno: @bci.valor_m_terreno, valor_pvg: @bci.valor_pvg, valor_venal: @bci.valor_venal, zoneamento: @bci.zoneamento } }
    end

    assert_redirected_to bci_url(Bci.last)
  end

  test "should show bci" do
    get bci_url(@bci)
    assert_response :success
  end

  test "should get edit" do
    get edit_bci_url(@bci)
    assert_response :success
  end

  test "should update bci" do
    patch bci_url(@bci), params: { bci: { agua: @bci.agua, ano_const: @bci.ano_const, area_const: @bci.area_const, area_lote: @bci.area_lote, area_test: @bci.area_test, classe_edif: @bci.classe_edif, coleta_lixo: @bci.coleta_lixo, data_cadastro: @bci.data_cadastro, descricao: @bci.descricao, energia: @bci.energia, esgoto: @bci.esgoto, guia: @bci.guia, iluminacao: @bci.iluminacao, material: @bci.material, n_test: @bci.n_test, nivel_rua: @bci.nivel_rua, ocupacao: @bci.ocupacao, padrao: @bci.padrao, pavimentacao: @bci.pavimentacao, pavimento: @bci.pavimento, pedologia: @bci.pedologia, profu: @bci.profu, qtd_test: @bci.qtd_test, sarjeta: @bci.sarjeta, situacao_lote: @bci.situacao_lote, telefone: @bci.telefone, terreno: @bci.terreno, test_direita: @bci.test_direita, test_esquerda: @bci.test_esquerda, test_frente: @bci.test_frente, test_fundos: @bci.test_fundos, tp_patrimonio: @bci.tp_patrimonio, unidade_id: @bci.unidade_id, urbanismo: @bci.urbanismo, utilizacao: @bci.utilizacao, valor_m_terreno: @bci.valor_m_terreno, valor_pvg: @bci.valor_pvg, valor_venal: @bci.valor_venal, zoneamento: @bci.zoneamento } }
    assert_redirected_to bci_url(@bci)
  end

  test "should destroy bci" do
    assert_difference('Bci.count', -1) do
      delete bci_url(@bci)
    end

    assert_redirected_to bcis_url
  end
end
