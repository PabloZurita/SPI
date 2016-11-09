class EsController < ApplicationController
  before_action :set_e, only: [:show, :edit, :update, :destroy]

  # GET /es
  # GET /es.json
  def index
    @es = E.all
  end

  # GET /es/1
  # GET /es/1.json
  def show
  end

  # GET /es/new
  def new
    @e = E.new
  end

  # GET /es/1/edit
  def edit
  end

  # POST /es
  # POST /es.json
  def create
    @e = E.new(e_params)

    respond_to do |format|
      if @e.save
        format.html { redirect_to @e, notice: 'E was successfully created.' }
        format.json { render :show, status: :created, location: @e }
      else
        format.html { render :new }
        format.json { render json: @e.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /es/1
  # PATCH/PUT /es/1.json
  def update
    respond_to do |format|
      if @e.update(e_params)
        format.html { redirect_to @e, notice: 'E was successfully updated.' }
        format.json { render :show, status: :ok, location: @e }
      else
        format.html { render :edit }
        format.json { render json: @e.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /es/1
  # DELETE /es/1.json
  def destroy
    @e.destroy
    respond_to do |format|
      format.html { redirect_to es_url, notice: 'E was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e
      @e = E.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def e_params
      params.require(:e).permit(:fijomovil_id, :linea_id)
    end
end
