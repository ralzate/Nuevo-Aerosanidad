class Cie10 < ActiveRecord::Base
		  belongs_to :historia_clinica
		  has_many :diagnosticos 

end