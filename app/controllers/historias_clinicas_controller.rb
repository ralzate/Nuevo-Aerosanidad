class HistoriasClinicasController < ApplicationController
  # before_action :set_historia_clinica, only: [:show, :edit, :update, :destroy]
  before_action :set_historia_clinica

  def index
    @historias_clinicas = @paciente.historias_clinicas.search(params[:search]).page(params[:page]).per_page(10)


  end




  def show
    @cie10s = Cie10.all
    @alejo = 0

    @diagnosticos = @historia_clinica.diagnosticos.all
    @cie10s = @historia_clinica.cie10s.all
    @procedimientos = @historia_clinica.procedimientos.all
    @notas_progreso = @historia_clinica.notas_progreso

    @historias_clinicas = @paciente.historias_clinicas.search(params[:search]).page(params[:page]).per_page(2)

    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :template => 'historias_clinicas/pdfs/historia_clinica.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end


  end



  # GET /countries/1/edit
  def edit
    #@diagnosticos = Diagnostico.where("historia_clinica_id = @historia_clinica")

  end






  # GET /pets/new
  def new
    @historia_clinica = HistoriaClinica.new
   end

  # POST /pets
  # POST /pets.json


  def create
    @historia_clinica = HistoriaClinica.new(historia_clinica_params)
    @historia_clinica.paciente_id = @paciente.id



    respond_to do |format|
      if @historia_clinica.save(validate: false)
        format.html { redirect_to paciente_historia_clinica_steps_path(@paciente, @historia_clinica,
         HistoriaClinica.form_steps.second), notice: 'Historia Clinica creada Satisfactoriamente.' }

        format.json { render :show, status: :created, location: @historia_clinica }
      else
        format.html { render :new }
        format.json { render json: @historia_clinica.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /diagnosticos/1
  # PATCH/PUT /diagnosticos/1.json




  def update
    respond_to do |format|
      if @historia_clinica.update(historia_clinica_params)
        format.html { redirect_to paciente_historia_clinica_path(@paciente, @historia_clinica), notice: 'Historia Clinica actualizada Satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @historia_clinica }
      else
        format.html { render :edit }
        format.json { render json: @historia_clinica.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /pets/1
  # DELETE /pets/1.json
  def destroy
    @historia_clinica.destroy
    respond_to do |format|
      format.html { redirect_to historias_clinicas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historia_clinica
      @paciente = Paciente.find(params[:paciente_id])
      @historia_clinica = HistoriaClinica.find(params[:id]) if params[:id]

    end


    # Never trust parameters from the scary internet, only allow the white list through.
    # Never trust parameters from the scary internet, only allow the white list through.
    def historia_clinica_params
        params.require(:historia_clinica).permit!

    end




end
