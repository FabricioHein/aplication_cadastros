class BcisController < ApplicationController
  before_action :set_bci, only: [:show, :edit, :update, :destroy]

  # GET /bcis
  # GET /bcis.json
  def index
    @bcis = Bci.all
  end

  # GET /bcis/1
  # GET /bcis/1.json
  def show
  end

  # GET /bcis/new
  def new
    @bci = Bci.new
  end

  # GET /bcis/1/edit
  def edit
  end

  # POST /bcis
  # POST /bcis.json
  def create
    @bci = Bci.new(bci_params)

    respond_to do |format|
      if @bci.save
        format.html { redirect_to @bci, notice: 'Bci was successfully created.' }
        format.json { render :show, status: :created, location: @bci }
      else
        format.html { render :new }
        format.json { render json: @bci.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bcis/1
  # PATCH/PUT /bcis/1.json
  def update
    respond_to do |format|
      if @bci.update(bci_params)
        format.html { redirect_to @bci, notice: 'Bci was successfully updated.' }
        format.json { render :show, status: :ok, location: @bci }
      else
        format.html { render :edit }
        format.json { render json: @bci.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bcis/1
  # DELETE /bcis/1.json
  def destroy
    @bci.destroy
    respond_to do |format|
      format.html { redirect_to bcis_url, notice: 'Bci was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bci
      @bci = Bci.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bci_params
      params.require(:bci).permit(:unidade_id, :data_cadastro, :zoneamento, :tp_patrimonio, :classe_edif, :pavimento, :padrao, :utilizacao, :material, :ano_const, :area_const, :area_lote, :test_frente, :test_direita, :test_fundos, :test_esquerda, :n_test, :area_test, :qtd_test, :profu, :sarjeta, :coleta_lixo, :agua, :esgoto, :iluminacao, :energia, :pavimentacao, :telefone, :guia, :situacao_lote, :pedologia, :urbanismo, :terreno, :nivel_rua, :ocupacao, :valor_m_terreno, :valor_venal, :valor_pvg, :descricao)
    end
end
