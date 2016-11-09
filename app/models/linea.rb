class Linea < ApplicationRecord
	has_many :separas
  	has_many :contrata
  	has_many :es2s
  	has_many :es
  	has_many :realizas
  	has_many :contesta
  	before_create :set_id_linea
	def set_id_linea
	  last_id_linea = Linea.maximum(:id_linea)
	  self.id_linea = last_id_linea.to_i + 1
	end
end
