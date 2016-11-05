class Preguntum < ApplicationRecord
	has_many :encuesta
	before_create :set_id_pregunta
	def set_id_pregunta
	  last_id_pregunta = Preguntum.maximum(:id_pregunta)
	  self.id_pregunta= last_id_pregunta.to_i + 1
	end
end
