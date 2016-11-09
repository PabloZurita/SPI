class Encuestum < ApplicationRecord
	has_many :contienes
	has_many :contesta
	before_create :set_id_encuesta
	def set_id_encuesta
	  last_id_encuesta = Encuestum.maximum(:id_encuesta)
	  self.id_encuesta = last_id_encuesta.to_i + 1
	end
end
