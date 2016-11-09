class ContienesController < ApplicationController
  before_action :set_contiene, only: [:show, :edit, :update, :destroy]

  # GET /contienes
  # GET /contienes.json
  def index
    @contienes = Contiene.all
  end

  # GET /contienes/1
  # GET /contienes/1.json
  def show
  end

  # GET /contienes/new
  def new
    @contiene = Contiene.new
  end

  # GET /contienes/1/edit
  def edit
  end

  # POST /contienes
  # POST /contienes.json
  def create
    @contiene = Contiene.new(contiene_params)

    respond_to do |format|
      if @contiene.save
        format.html { redirect_to @contiene, notice: 'Contiene was successfully created.' }
        format.json { render :show, status: :created, location: @contiene }
      else
        format.html { render :new }
        format.json { render json: @contiene.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contienes/1
  # PATCH/PUT /contienes/1.json
  def update
    respond_to do |format|
      if @contiene.update(contiene_params)
        format.html { redirect_to @contiene, notice: 'Contiene was successfully updated.' }
        format.json { render :show, status: :ok, location: @contiene }
      else
        format.html { render :edit }
        format.json { render json: @contiene.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contienes/1
  # DELETE /contienes/1.json
  def destroy
    @contiene.destroy
    respond_to do |format|
      format.html { redirect_to contienes_url, notice: 'Contiene was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contiene
      @contiene = Contiene.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contiene_params
      params.require(:contiene).permit(:encuestum_id, :preguntum_id)
    end
end
