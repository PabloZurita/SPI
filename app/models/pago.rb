class Pago < ApplicationRecord
  	belongs_to :linea
  	belongs_to :mdp
  	before_create :set_id_pago
	def set_id_pago
	  last_id_pago = Pago.maximum(:id_pago)
	  self.id_pago = last_id_pago.to_i + 1
	end
end
