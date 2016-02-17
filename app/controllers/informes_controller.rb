class InformesController < ApplicationController
  before_action :authorize

  def index
  end

  def show
  end


  def usuarios
    @users = User.all
    @empresas = Empresa.all



    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :template => 'historias_clinicas/pdfs/usuarios.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end

    
  end

  def  mensual_actividades_medicas

    @historias_clinicas = HistoriaClinica.all
    @users = User.all
    @empresas = Empresa.all


    $varMensuales = params[:searchbox3]
    $varMensuales2 = params[:searchbox33]
    dadasdas = params[:nombre]
    $aeropuertoMensuales = dadasdas[:id]


    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :template => 'historias_clinicas/pdfs/actividades_clinicas.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end

  end


  def aerocivil

    @historias_clinicas = HistoriaClinica.all
    @users = User.all
    @empresas = Empresa.all


    $varAerocivil = params[:searchbox]
    $varAerocivil2 = params[:searchbox2]
    aeropuertoAerocivil = params[:nombre]
    $aeropuertoAerocivil = aeropuertoAerocivil[:id]


    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :template => 'historias_clinicas/pdfs/aerocivil.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end

  end



  def procedimientos_medicos_enfermeria
    
    @historias_clinicas = HistoriaClinica.all
    @users = User.all
    @empresas = Empresa.all


    $varprocedimientos = params[:searchbox4]
    $varprocedimientos2 = params[:searchbox44]
    $aeropuertoNombre = params[:nombre]
    $aeropuertoId = $aeropuertoNombre[:id]


    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :template => 'historias_clinicas/pdfs/procedimientos_medicos_enfermeria.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end

  end


  def pacientes_atendidos_por_empresas
    
    @historias_clinicas = HistoriaClinica.all
    @users = User.all
    @empresas = Empresa.all
    $mivar = params[:searchbox]
    $mivar2 = params[:searchbox2]
    alejo = params[:nombre]
    $airport = alejo[:id]


    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :template => 'historias_clinicas/pdfs/pacientes_atendidos_por_empresas.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
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
