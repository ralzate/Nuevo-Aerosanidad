class InformesController < ApplicationController


  def index
    @historias_clinicas = HistoriaClinica.all

    respond_to do |format|
      format.html
            format.pdf do 
        pdf = UsersPdf.new(
          @users)
        send_data pdf.render, filename: 'report.pdf', type: 'application/pdf', :disposition => "inline"
        
      end
    end

  end

  def show
  end



  def  mensual_actividades_medicas

    @historias_clinicas = HistoriaClinica.all
    @users = User.all
    @empresas = Empresa.all

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

  def informe_mensual
     @historias_clinicas = HistoriaClinica.all

      respond_to do |format|
        format.html
              format.pdf do 
          pdf = InformesMensualesPdf.new(
          @users,
          @empresas,
          @historias_clinicas)
          send_data pdf.render, filename: 'report.pdf', type: 'application/pdf', :disposition => "inline"
          
        end
      end

  end

end
