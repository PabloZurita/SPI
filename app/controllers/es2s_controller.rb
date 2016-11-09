class Es2sController < ApplicationController
  before_action :set_es2, only: [:show, :edit, :update, :destroy]

  # GET /es2s
  # GET /es2s.json
  def index
    @es2s = Es2.all
  end

  # GET /es2s/1
  # GET /es2s/1.json
  def show
  end

  # GET /es2s/new
  def new
    @es2 = Es2.new
  end

  # GET /es2s/1/edit
  def edit
  end

  # POST /es2s
  # POST /es2s.json
  def create
    @es2 = Es2.new(es2_params)

    respond_to do |format|
      if @es2.save
        format.html { redirect_to @es2, notice: 'Es2 was successfully created.' }
        format.json { render :show, status: :created, location: @es2 }
      else
        format.html { render :new }
        format.json { render json: @es2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /es2s/1
  # PATCH/PUT /es2s/1.json
  def update
    respond_to do |format|
      if @es2.update(es2_params)
        format.html { redirect_to @es2, notice: 'Es2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @es2 }
      else
        format.html { render :edit }
        format.json { render json: @es2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /es2s/1
  # DELETE /es2s/1.json
  def destroy
    @es2.destroy
    respond_to do |format|
      format.html { redirect_to es2s_url, notice: 'Es2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_es2
      @es2 = Es2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def es2_params
      params.require(:es2).permit(:contrato_id, :linea_id)
    end
end
