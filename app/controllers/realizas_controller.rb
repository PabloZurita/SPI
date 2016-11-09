class RealizasController < ApplicationController
  before_action :set_realiza, only: [:show, :edit, :update, :destroy]

  # GET /realizas
  # GET /realizas.json
  def index
    @realizas = Realiza.all
  end

  # GET /realizas/1
  # GET /realizas/1.json
  def show
  end

  # GET /realizas/new
  def new
    @realiza = Realiza.new
  end

  # GET /realizas/1/edit
  def edit
  end

  # POST /realizas
  # POST /realizas.json
  def create
    @realiza = Realiza.new(realiza_params)

    respond_to do |format|
      if @realiza.save
        format.html { redirect_to @realiza, notice: 'Realiza was successfully created.' }
        format.json { render :show, status: :created, location: @realiza }
      else
        format.html { render :new }
        format.json { render json: @realiza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /realizas/1
  # PATCH/PUT /realizas/1.json
  def update
    respond_to do |format|
      if @realiza.update(realiza_params)
        format.html { redirect_to @realiza, notice: 'Realiza was successfully updated.' }
        format.json { render :show, status: :ok, location: @realiza }
      else
        format.html { render :edit }
        format.json { render json: @realiza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /realizas/1
  # DELETE /realizas/1.json
  def destroy
    @realiza.destroy
    respond_to do |format|
      format.html { redirect_to realizas_url, notice: 'Realiza was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_realiza
      @realiza = Realiza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def realiza_params
      params.require(:realiza).permit(:linea_id, :pago_id)
    end
end
