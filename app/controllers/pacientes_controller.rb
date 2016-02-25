class PacientesController < ApplicationController
  before_action :set_paciente, only: [:show, :edit, :update, :destroy]

  # before_filter :find_paciente_clinic_histories
  # GET /pacientes
  # GET /pacientes.json
  def index
    @pacientes = Paciente.search(params[:search]).page(params[:page]).per_page(20)
  end

  # GET /pacientes/1
  # GET /pacientes/1.json
  def show
  end

  # GET /pacientes/new
  def new
    @paciente = Paciente.new
   # @paciente.build_ciudad

  end

  # GET /pacientes/1/edit
  def edit

  end

  # POST /pacientes
  # POST /pacientes.json
  def create
    @paciente = Paciente.new(paciente_params)
    if @paciente.email.blank?
      @paciente.email = "N/A"
    end
    respond_to do |format|
      if @paciente.save
        format.html { redirect_to new_paciente_historia_clinica_path(@paciente), notice: 'Paciente creado Satisfactoriamente.' }
        format.json { render :show, status: :created, location: @paciente }
      else
        format.html { render :new }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacientes/1
  # PATCH/PUT /pacientes/1.json
  def update

    respond_to do |format|
      if @paciente.update(paciente_params)

        format.html { redirect_to @paciente, notice: 'Paciente actualizado Satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @paciente }
      else
        format.html { render :edit }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacientes/1
  # DELETE /pacientes/1.json
  def destroy
    @paciente.destroy
    respond_to do |format|
      format.html { redirect_to pacientes_url, notice: 'Paciente eliminado Satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_paciente
      @paciente = Paciente.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paciente_params
      params.require(:paciente).permit!
    end


end
