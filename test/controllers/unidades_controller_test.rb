require 'test_helper'

class UnidadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unidade = unidades(:one)
  end

  test "should get index" do
    get unidades_url
    assert_response :success
  end

  test "should get new" do
    get new_unidade_url
    assert_response :success
  end

  test "should create unidade" do
    assert_difference('Unidade.count') do
      post unidades_url, params: { unidade: { cadastro_id: @unidade.cadastro_id, cep: @unidade.cep, cod_face: @unidade.cod_face, complemento: @unidade.complemento, info_complementar: @unidade.info_complementar, insc_imb_anterior: @unidade.insc_imb_anterior, insc_imob: @unidade.insc_imob, logradouro: @unidade.logradouro, lote: @unidade.lote, loteamento: @unidade.loteamento, matricula: @unidade.matricula, numero: @unidade.numero, quadra: @unidade.quadra, setor: @unidade.setor, sub_lote: @unidade.sub_lote, tipo_imovel: @unidade.tipo_imovel, unidade: @unidade.unidade, zoneamento: @unidade.zoneamento } }
    end

    assert_redirected_to unidade_url(Unidade.last)
  end

  test "should show unidade" do
    get unidade_url(@unidade)
    assert_response :success
  end

  test "should get edit" do
    get edit_unidade_url(@unidade)
    assert_response :success
  end

  test "should update unidade" do
    patch unidade_url(@unidade), params: { unidade: { cadastro_id: @unidade.cadastro_id, cep: @unidade.cep, cod_face: @unidade.cod_face, complemento: @unidade.complemento, info_complementar: @unidade.info_complementar, insc_imb_anterior: @unidade.insc_imb_anterior, insc_imob: @unidade.insc_imob, logradouro: @unidade.logradouro, lote: @unidade.lote, loteamento: @unidade.loteamento, matricula: @unidade.matricula, numero: @unidade.numero, quadra: @unidade.quadra, setor: @unidade.setor, sub_lote: @unidade.sub_lote, tipo_imovel: @unidade.tipo_imovel, unidade: @unidade.unidade, zoneamento: @unidade.zoneamento } }
    assert_redirected_to unidade_url(@unidade)
  end

  test "should destroy unidade" do
    assert_difference('Unidade.count', -1) do
      delete unidade_url(@unidade)
    end

    assert_redirected_to unidades_url
  end
end
