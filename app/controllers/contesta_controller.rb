class ContestaController < ApplicationController
  before_action :set_contestum, only: [:show, :edit, :update, :destroy]

  # GET /contesta
  # GET /contesta.json
  def index
    @contesta = Contestum.all
  end

  # GET /contesta/1
  # GET /contesta/1.json
  def show
  end

  # GET /contesta/new
  def new
    @contestum = Contestum.new
  end

  # GET /contesta/1/edit
  def edit
  end

  # POST /contesta
  # POST /contesta.json
  def create
    @contestum = Contestum.new(contestum_params)

    respond_to do |format|
      if @contestum.save
        format.html { redirect_to @contestum, notice: 'Contestum was successfully created.' }
        format.json { render :show, status: :created, location: @contestum }
      else
        format.html { render :new }
        format.json { render json: @contestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contesta/1
  # PATCH/PUT /contesta/1.json
  def update
    respond_to do |format|
      if @contestum.update(contestum_params)
        format.html { redirect_to @contestum, notice: 'Contestum was successfully updated.' }
        format.json { render :show, status: :ok, location: @contestum }
      else
        format.html { render :edit }
        format.json { render json: @contestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contesta/1
  # DELETE /contesta/1.json
  def destroy
    @contestum.destroy
    respond_to do |format|
      format.html { redirect_to contesta_url, notice: 'Contestum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contestum
      @contestum = Contestum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contestum_params
      params.require(:contestum).permit(:linea_id, :encuesta_id)
    end
end
