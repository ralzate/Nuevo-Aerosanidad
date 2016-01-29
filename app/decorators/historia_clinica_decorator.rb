module HistoriaClinicaDecorator


  	def select_condition
    	[
	        ['Pasajero', 'Pasajero'],
	        ['Tripulante', 'Tripulante'],
	        ['Empleado', 'Empleado'],
	        ['Visitante', 'Visitante'],
	        ['Otro', 'Otro']

    	]
  	end




  	def select_type_service
    	[
	        ['Atención prehospitalaria', 'Atención prehospitalaria'],
	        ['Valoración aptitud de vuelo', 'Valoración aptitud de vuelo'],
	        ['Enfermedad general', 'Enfermedad general'],
	        ['Evento laboral', 'Evento laboral'],
	        ['Accidente de transito', 'Accidente de transito'],
	        ['Traslado', 'Traslado'],
	        ['Otro tipo de accidente', 'Otro tipo de accidente'],
	        ['Remisión', 'Remisión']
    	]
  	end


  	def select_lugar
    	[
	        ['Interno(Sanidad)', 'Interno(Sanidad)'],
	        ['Externo', 'Externo'],
    	]
  	end


  	def select_lugar
    	[
	        ['Interno(Sanidad)', 'Interno(Sanidad)'],
	        ['Externo', 'Externo'],
    	]
  	end



  	def select_patologia
    	[
	        ['Aparato Circulatorio', 'Aparato Circulatorio'],
	        ['Aparato Respiratorio Alto', 'Aparato Respiratorio Alto'],
	        ['Aparato Respiratorio Bajo', 'Aparato Respiratorio Bajo'],
	        ['E. Aparato Digestivo', 'E. Aparato Digestivo'],
	        ['E. Aparato Genital', 'E. Aparato Genital'],
	        ['E. Aparato Urinario', 'E. Aparato Urinario'],
	        ['E. Endocr. Nutr Metab', 'E. Endocr. Nutr Metab'],
	        ['E. Fiel Y T.O.S', 'E. Fiel Y T.O.S'],
	        ['E. Organos De Los Sentidos', 'E. Organos De Los Sentidos'],
	        ['E. Parasit', 'E. Parasit'],
	        ['E. Sangre Organ H', 'E. Sangre Organ H'],
	        ['E. Sistema Muscular', 'E. Sistema Muscular'],
	        ['E. Sistema Oseo', 'E. Sistema Oseo'],
	        ['Embarazo Complicado', 'Embarazo Complicado'],
	        ['Embarazo Sin Complicaciones', 'Embarazo Sin Complicaciones'],
	        ['E. Congenitas', 'E. Congenitas'],
	        ['Enf. Infecciosas', 'Enf. Infecciosas'],
	        ['Enf. Perinatal', 'Enf. Perinatal'],
	        ['Enf. Sist. Nervioso', 'Enf. Sist. Nervioso'],
	        ['Envenenamiento', 'Envenenamiento'],
	        ['Signos Y Sintomas Mal Definidos', 'Signos Y Sintomas Mal Definidos'],
	        ['Transtornos Mentales', 'Transtornos Mentales'],
	        ['Traumas', 'Traumas'],
	        ['Tumorales', 'Tumorales'],
	        ['Otros', 'Otros'],

    	]
  	end









  	def select_otras_patologias
    	[
	        ['Accidente Cerebral', 'Accidente Cerebral'],
	        ['Cancer', 'Cancer'],
	        ['Diabetes Mellitus', 'Diabetes Mellitus'],
	        ['Dolor Abdominal', 'Dolor Abdominal'],
	        ['Dolor Precordial/ Angina', 'Dolor Precordial/ Angina'],
	        ['Enf. Diarreica Aguda', 'Enf. Diarreica Aguda'],
	        ['Epoc', 'Epoc'],
	        ['Fracturas', 'Fracturas'],
	        ['Heridas Por Corto Punzante', 'Heridas Por Corto Punzante'],
	        ['Hipertension Arterial', 'Hipertension Arterial'],
	        ['Intoxicacion', 'Intoxicacion'],
	        ['Neumonia', 'Neumonia'],
	        ['Otalgias Odontalgias', 'Otalgias Odontalgias'],
	        ['Post Operatorios Varios', 'Post Operatorios Varios'],
	        ['Quemaduras', 'Quemaduras'],
	        ['Recien Nacidos', 'Recien Nacidos'],
	        ['Rinofaringitis', 'Rinofaringitis'],
	        ['Vertigo', 'Vertigo'],

    	]
  	end





  	def select_accidentes_especiales
    	[
	        ['Accidente Laboral', 'Accidente Laboral'],
	        ['Mordedura Otro Tipo', 'Mordedura Otro Tipo'],
	        ['Ofidico', 'Ofidico'],
	        ['Rabico', 'Rabico'],
	        ['Ninguno', 'Ninguno'],
	        ['No Aplica', 'No Aplica'],

    	]
  	end




  	def select_notificacion_obligatoria
    	[
	        ['Dengue', 'Dengue'],
	        ['Paludismo', 'Paludismo'],
	        ['Tuberculosis', 'Tuberculosis'],
	        ['Otras', 'Otras'],
	        ['Ninguno', 'Ninguno'],
	        ['No Aplica', 'No Aplica'],

    	]
  	end


  	def select_emergencias
    	[
	        ['Accidentes Aereos', 'Accidentes Aereos'],
	        ['Alistamientos', 'Alistamientos'],
	        ['Contingencias', 'Contingencias'],
	        ['Emergencia Salud Publica', 'Emergencia Salud Publica'],
	        ['Ninguno', 'Ninguno'],
	        ['No Aplica', 'No Aplica'],

    	]
  	end



  	def select_tipo_de_vuelo
    	[
	        ['Ambulancia', 'Ambulancia'],
	        ['Comercial', 'Comercial'],
	        ['No Aplica', 'No Aplica'],

    	]
  	end

  	
  	


end