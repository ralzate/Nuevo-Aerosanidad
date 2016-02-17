class NotasProgresoController < ApplicationController
  # before_action :set_historia_clinica, only: [:show, :edit, :update, :destroy]
  before_filter :set_nota_progreso

  # GET /pets
  # GET /pets.json
  def index
    # Normally you'd have more complex requirements about
    # when not to show rows, but we don't show any records that don't have a name

    @notas_progreso = @historia_clinica.notas_progreso.search(params[:search]).page(params[:page]).per_page(2)

  end






  # GET /notas_progreso/1
  # GET /notas_progreso/1.json
  def show
  end

  # GET /notas_progreso/new
  def new
    @nota_progreso = NotaProgreso.new
  end

  # GET /notas_progreso/1/edit
  def edit
  end

  # POST /notas_progreso
  # POST /notas_progreso.json
  def create
    @nota_progreso = NotaProgreso.new(nota_progreso_params)
   
    @nota_progreso.historia_clinica_id = @historia_clinica.id




    respond_to do |format|
      if @nota_progreso.save
        format.html { redirect_to paciente_historia_clinica_nota_progreso_path(@paciente, @historia_clinica, @nota_progreso), notice: 'Nota de Evolución creada Satisfactoriamente.' }

        format.json { render :show, status: :created, location: @nota_progreso }
      else
        format.html { render :new }
        format.json { render json: @nota_progreso.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /notas_progreso/1
  # PATCH/PUT /notas_progreso/1.json
  def update
    respond_to do |format|
      if @nota_progreso.update(nota_progreso_params)
        format.html { redirect_to paciente_historia_clinica_nota_progreso_path(@paciente, @historia_clinica, @nota_progreso), notice: 'Nota de Evolución actualizada Satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @nota_progreso }
      else
        format.html { render :edit }
        format.json { render json: @nota_progreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notas_progreso/1
  # DELETE /notas_progreso/1.json
  def destroy
    @nota_progreso.destroy
    respond_to do |format|
      format.html { redirect_to notas_progreso_url, notice: 'Nota de Evolución eliminada Satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nota_progreso
      @historia_clinica = HistoriaClinica.find(params[:historia_clinica_id])
      @paciente = Paciente.find(params[:paciente_id])
      @nota_progreso = NotaProgreso.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nota_progreso_params
      params.require(:nota_progreso).permit(:nombre_paciente, :documento_paciente, :procedimientos_medicos_y_de_enfermeria, :tipo_documento, :descripcion, :historia_clinica_id, :user_id)
    end
end
