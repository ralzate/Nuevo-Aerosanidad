class Cie10sController < ApplicationController
  before_action :set_cie10, only: [:show, :edit, :update, :destroy]

  # GET /cie10s
  # GET /cie10s.json
  def index
    @cie10s = Cie10.all

  respond_to do |format|
       format.json { render :json => @cie10s }
     end

  end

  # GET /cie10s/1
  # GET /cie10s/1.json
  def show
  end

  # GET /cie10s/new
  def new
    @cie10 = Cie10.new
  end

  # GET /cie10s/1/edit
  def edit
  end

  # POST /cie10s
  # POST /cie10s.json
  def create
    @cie10 = Cie10.new(cie10_params)

    respond_to do |format|
      if @cie10.save
        format.html { redirect_to @cie10, notice: 'Cie10 was successfully created.' }
        format.json { render :show, status: :created, location: @cie10 }
      else
        format.html { render :new }
        format.json { render json: @cie10.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cie10s/1
  # PATCH/PUT /cie10s/1.json
  def update
    respond_to do |format|
      if @cie10.update(cie10_params)
        format.html { redirect_to @cie10, notice: 'Cie10 was successfully updated.' }
        format.json { render :show, status: :ok, location: @cie10 }
      else
        format.html { render :edit }
        format.json { render json: @cie10.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cie10s/1
  # DELETE /cie10s/1.json
  def destroy
    @cie10.destroy
    respond_to do |format|
      format.html { redirect_to cie10s_url, notice: 'Cie10 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cie10
      @cie10 = Cie10.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cie10_params
      params.require(:cie10).permit(:familia, :codigo, :descripcion)
    end
end