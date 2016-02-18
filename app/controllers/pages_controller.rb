class PagesController < ApplicationController
  skip_before_filter :require_login, only: [:home, :contact, :help]


  def home

    if params[:search].present?
      	search1 = (params[:search])
      	search = search1.capitalize
        @pacientes = Paciente.search(params[:search]).page(params[:page]).per_page(8)
    end


    if request.xhr?
      render partial: 'personas', status: 200
    end

  end

  def contact
  end

  def help
  end


end
