=begin
  
NO usar (draw text)!! este metodo no se acomoda a los otros
(Text) siiiii :)
  
=end


class UsersPdf < Prawn::Document
  def initialize(usuarios)
    super()
    @usuarios = usuarios
    logo_1
    usuarios_parte_1
    pie_de_pagina
  end

  def logo_1
      image = "#{Rails.root}/app/assets/images/Logo/LogoPdf.png"
  end


  def usuarios_parte_1
      move_down 30
      text "I. DATOS USUARIOS", size: 15, style: :bold, :color => "22BDC8"

      table(usuarios_titulo, :column_widths => [105, 120, 150, 165], :cell_style => {position: :absulte,  size: 8}) do
      	          row(0).font_style = :bold
    end

      table(usuarios_rows, :column_widths => [105, 120, 150, 165], :cell_style => {position: :absulte,  size: 8}) do
    end
  end


  def usuarios_titulo
      [['Nombres', 'Apellidos', 'Tipo Documento', 'Documento']] +

          @usuarios.map do |usuario|
        [

        ]
      end
  end


  def usuarios_rows
          @usuarios.map do |usuario|
        [
          usuario.nombres , 
          usuario.apellidos ,
          usuario.tipo_documento ,
          usuario.documento
        ]
    end
  end

  def pie_de_pagina 
    move_down 120
    text "www.aerosanidadvirtual.com", size: 9, :align => :center, :style => :bold
    text "Aeropuerto Bogotá: (57)(1) 2205674 / 3002221245", size: 9, :align => :center
    text "Aeropuerto Medellín: (57)(4) 3656171 / 3007042683", size: 9, :align => :center
    text "Aeropuerto Rionegro: 3002214168", size: 9, :align => :center
    text "------------------------------------------------", size: 9, :align => :center
    text "comunicaciones@aerosanidadsas.com",  size: 9, :align => :center
  end

end
