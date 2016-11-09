class SeparasController < ApplicationController
  before_action :set_separa, only: [:show, :edit, :update, :destroy]

  # GET /separas
  # GET /separas.json
  def index
    @separas = Separa.all
  end

  # GET /separas/1
  # GET /separas/1.json
  def show
  end

  # GET /separas/new
  def new
    @separa = Separa.new
  end

  # GET /separas/1/edit
  def edit
  end

  # POST /separas
  # POST /separas.json
  def create
    @separa = Separa.new(separa_params)

    respond_to do |format|
      if @separa.save
        format.html { redirect_to @separa, notice: 'Separa was successfully created.' }
        format.json { render :show, status: :created, location: @separa }
      else
        format.html { render :new }
        format.json { render json: @separa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /separas/1
  # PATCH/PUT /separas/1.json
  def update
    respond_to do |format|
      if @separa.update(separa_params)
        format.html { redirect_to @separa, notice: 'Separa was successfully updated.' }
        format.json { render :show, status: :ok, location: @separa }
      else
        format.html { render :edit }
        format.json { render json: @separa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /separas/1
  # DELETE /separas/1.json
  def destroy
    @separa.destroy
    respond_to do |format|
      format.html { redirect_to separas_url, notice: 'Separa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_separa
      @separa = Separa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def separa_params
      params.require(:separa).permit(:segmento_id, :linea_id)
    end
end
