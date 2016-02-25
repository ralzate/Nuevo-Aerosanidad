# == Schema Information
#
# Table name: cie10s
#
#  id          :integer          not null, primary key
#  familia     :string
#  codigo      :string
#  descripcion :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cie10 < ActiveRecord::Base
		  belongs_to :historia_clinica
		  has_many :diagnosticos 

end
