class HistoriaClinica < ActiveRecord::Base




  belongs_to :user
  belongs_to :paciente
  belongs_to :aeropuerto





  #belongs_to :origen_aeropuertos,  :primary_key => "id", :foreign_key => "a_orgien", :class_name  => "Aeropuerto"
  #belongs_to :destino_aeropuertos,  :primary_key => "id", :foreign_key => "a_destino", :class_name => "Aeropuerto"

  belongs_to :cie10_principal, :class_name => 'Cie10', :foreign_key => 'cie10_id'


  has_many :cie10s
  has_many :diagnosticos
  has_many :procedimientos
  has_many :notas_progreso

  
  accepts_nested_attributes_for :diagnosticos, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :procedimientos, reject_if: :all_blank, allow_destroy: true






  cattr_accessor :form_steps do
    %w(a_historia_clinica b_antecedentes c_revision_sistemas d_examen_fisico e_impresion_diagnostica)
  end

  attr_accessor :form_step












  def required_for_step?(step)
    return true if form_step.nil?
    return true if self.form_steps.index(step.to_s) <= self.form_steps.index(form_step)
  end
   def self.search(search)
    where("p_primer_nombre like '%#{search}%'  or p_segundo_nombre like '%#{search}%' 
    or p_primer_apellido like '%#{search}%'  or p_segundo_apellido like '%#{search}%' 
    or p_email like '%#{search}%' or p_documento like '%#{search}%' or p_direccion like 
    '%#{search}%'")
  end


   before_save do
      self.d_alteracion.gsub!(/[\[\]\"]/, "") if attribute_present?("d_alteracion")
      self.d_otros_signos.gsub!(/[\[\]\"]/, "") if attribute_present?("d_otros_signos")
   end


end