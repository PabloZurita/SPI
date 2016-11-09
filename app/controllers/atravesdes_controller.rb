class AtravesdesController < ApplicationController
  before_action :set_atravesde, only: [:show, :edit, :update, :destroy]

  # GET /atravesdes
  # GET /atravesdes.json
  def index
    @atravesdes = Atravesde.all
  end

  # GET /atravesdes/1
  # GET /atravesdes/1.json
  def show
  end

  # GET /atravesdes/new
  def new
    @atravesde = Atravesde.new
  end

  # GET /atravesdes/1/edit
  def edit
  end

  # POST /atravesdes
  # POST /atravesdes.json
  def create
    @atravesde = Atravesde.new(atravesde_params)

    respond_to do |format|
      if @atravesde.save
        format.html { redirect_to @atravesde, notice: 'Atravesde was successfully created.' }
        format.json { render :show, status: :created, location: @atravesde }
      else
        format.html { render :new }
        format.json { render json: @atravesde.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atravesdes/1
  # PATCH/PUT /atravesdes/1.json
  def update
    respond_to do |format|
      if @atravesde.update(atravesde_params)
        format.html { redirect_to @atravesde, notice: 'Atravesde was successfully updated.' }
        format.json { render :show, status: :ok, location: @atravesde }
      else
        format.html { render :edit }
        format.json { render json: @atravesde.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atravesdes/1
  # DELETE /atravesdes/1.json
  def destroy
    @atravesde.destroy
    respond_to do |format|
      format.html { redirect_to atravesdes_url, notice: 'Atravesde was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atravesde
      @atravesde = Atravesde.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atravesde_params
      params.require(:atravesde).permit(:pago_id, :mdp_id)
    end
end
