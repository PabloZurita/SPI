class Linea < ApplicationRecord
  belongs_to :cliente
  has_many :segmentos
  has_many :contratos
  has_many :fijomovils
  has_many :encuesta
  has_many :pagos
  before_create :set_id_linea
	def set_id_linea
	  last_id_linea = Linea.maximum(:id_linea)
	  self.id_linea = last_id_linea.to_i + 1
	end
end
