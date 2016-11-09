class ContrataController < ApplicationController
  before_action :set_contratum, only: [:show, :edit, :update, :destroy]

  # GET /contrata
  # GET /contrata.json
  def index
    @contrata = Contratum.all
  end

  # GET /contrata/1
  # GET /contrata/1.json
  def show
  end

  # GET /contrata/new
  def new
    @contratum = Contratum.new
  end

  # GET /contrata/1/edit
  def edit
  end

  # POST /contrata
  # POST /contrata.json
  def create
    @contratum = Contratum.new(contratum_params)

    respond_to do |format|
      if @contratum.save
        format.html { redirect_to @contratum, notice: 'Contratum was successfully created.' }
        format.json { render :show, status: :created, location: @contratum }
      else
        format.html { render :new }
        format.json { render json: @contratum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contrata/1
  # PATCH/PUT /contrata/1.json
  def update
    respond_to do |format|
      if @contratum.update(contratum_params)
        format.html { redirect_to @contratum, notice: 'Contratum was successfully updated.' }
        format.json { render :show, status: :ok, location: @contratum }
      else
        format.html { render :edit }
        format.json { render json: @contratum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contrata/1
  # DELETE /contrata/1.json
  def destroy
    @contratum.destroy
    respond_to do |format|
      format.html { redirect_to contrata_url, notice: 'Contratum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contratum
      @contratum = Contratum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contratum_params
      params.require(:contratum).permit(:cliente_id, :linea_id)
    end
end
