class CreateHistoriasClinicas < ActiveRecord::Migration
  def change
    create_table :historias_clinicas do |t|

          t.string   :p_primer_nombre
          t.string   :p_segundo_nombre
          t.string   :p_primer_apellido
          t.string   :p_segundo_apellido
          t.string   :p_email
          t.string   :p_tipo_documento
          t.string   :p_documento
          t.date     :p_fecha_nacimiento
          t.string   :p_genero
          t.string   :p_profesion
          t.string   :p_tipo_sangre
          t.string   :p_nacionalidad
          t.string   :p_direccion
          t.string   :registro_medico
          t.integer  :user_id
          t.string   :p_ciudad
          t.string   :p_departamento
          t.integer  :paciente_id
          t.string   :a_auxiliar
          t.integer   :aeropuerto_id
          t.string   :a_cove    
          t.string   :a_movil_servicio
          t.string   :a_condicion
          t.string   :a_tipo_servicio
          t.string   :a_empresa
          t.string   :a_lugar_de_atencion
          t.string   :a_origen
          t.string   :a_destino
          t.string   :a_nombre_acompañante
          t.string   :a_parentesco
          t.string   :a_telefono
          t.string   :arl
          t.string   :eps
          t.text     :a_motivo_de_consulta
          t.text     :a_enfermedad_actual
          t.string   :b_neonatales
          t.text     :b_neonatales_descripcion
          t.string   :b_patologicos
          t.text     :b_patologicos_descripcion
          t.string   :b_quirurgicos
          t.text     :b_quirurgicos_descripcion
          t.string   :b_farmacologicos
          t.text     :b_farmacologicos_descripcion
          t.string   :b_alergicos
          t.text     :b_alergicos_descripcion
          t.string   :b_toxicos
          t.text     :b_toxicos_descripcion
          t.string   :b_traumaticos
          t.text     :b_traumaticos_descripcion
          t.string   :b_hospitalarios
          t.text     :b_hospitalarios_descripcion
          t.string   :b_atep_laboral
          t.text     :b_atep_laboral_descripcion
          t.string   :b_familiares
          t.text     :b_familiar_descripcion
          t.string   :b_inmunologicos
          t.text     :b_inmunologios_descripcion
          t.string   :b_asociado_viajes_de_vuelo
          t.text     :b_asociado_viajes_de_vuelo_descripcion
          t.string  :b_ciclo_menstrual
          t.string   :b_edad_gestacional
          t.string   :b_eco
          t.string   :b_menarquia
          t.string     :b_fecha_ultima_citologia
          t.string     :b_fecha_ultima_mamografia
          t.string  :b_fum
          t.string   :b_embarazo
          t.string   :b_g
          t.string   :b_p
          t.string   :b_c
          t.string   :b_a
          t.string   :b_m
          t.string   :b_v
          t.string   :b_e
          t.string   :c_cardiovascular
          t.text     :c_cardiovascular_descripcion
          t.string   :c_respiratorio
          t.text     :c_respiratorio_descripcion
          t.string   :c_abdominal
          t.text     :c_abdominal_descripcion
          t.string   :c_genito_urinario
          t.text     :c_genito_urinario_descripcion
          t.string   :c_neurologico
          t.text     :c_neurologico_descripcion
          t.string   :c_mental
          t.text     :c_mental_descripcion
          t.string   :c_organo_de_los_sentidos
          t.string   :c_organo_de_los_sentidos_descripcion
          t.string   :c_musculo_esqueletico
          t.text     :c_musculo_esqueletico_descripcion
          t.string   :c_piel_y_faneras
          t.text     :c_piel_y_faneras_descripcion
          t.string   :d_ta_mmgh_diastole
          t.string   :d_ta_mmgh_sistole
          t.string   :d_frecuencia_cardiaca
          t.string   :d_frecuencia_respiratoria
          t.string   :d_sat_of_o_ambiente
          t.string   :d_sat_of_o_suplementario
          t.string   :d_temperatura
          t.string   :d_peso_en_kilogramos
          t.string   :d_talla_en_centimetros
          t.string   :d_glucometria
          t.string   :d_cabeza
          t.text     :d_cabeza_descripcion
          t.text     :d_cuello
          t.text     :d_cuello_descripcion
          t.string   :d_caja_toracica
          t.text     :d_caja_toracica_descripcion
          t.string   :d_corazon
          t.text     :d_corazon_descripcion
          t.string   :d_pulmones
          t.text     :d_pulmones_descripcion
          t.string   :d_abdomen
          t.text     :d_abdomen_descripcion
          t.string   :d_genito_urinario
          t.text     :d_genito_urinario_descripcion
          t.string   :d_recto
          t.text     :d_recto_descripcion
          t.string   :d_extremidades
          t.text     :d_extremidades_descripcion
          t.string   :d_piel_y_faneras
          t.text     :d_piel_y_faneras_descripcion
          t.string   :d_musculo_esqueletico
          t.text     :d_musculo_esqueletico_descripcion
          t.string   :d_mental
          t.text     :d_mental_descripcion
          t.string   :d_neurologico
          t.text     :d_neurologico_descripcion
          t.string   :d_alteracion
          t.integer  :d_apertura_ocular
          t.integer  :d_respuesta_verbal
          t.integer  :d_respuesta_motora
          t.string   :d_otros_signos
          t.integer  :d_escala_de_glasgow
          t.text     :e_analisis
          t.text     :e_observaciones_recomendaciones
          t.text     :e_evento_adverso
         t.boolean  :e_estado_historia_clinica
         t.string  :e_estado_paciente
          t.string  :e_glucometria1
          t.string   :e_hora1
          t.string  :e_glucometria2
          t.string   :e_hora2
          t.text     :e_electrocardiograma
          t.references :aeropuerto, index: true, foreign_key: true
          t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end