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

def  alejo
    @historias_clinicas = HistoriaClinica.all
    @users = User.all
    @empresas = Empresa.all


    respond_to do |format|
      format.html
            format.pdf do 
        pdf = HistorisClinicasPdf.new(
          @users,
          @empresas,
          @historias_clinicas)
        send_data pdf.render, filename: 'report.pdf', type: 'application/pdf', :disposition => "inline"
      end
    end
  end



end
