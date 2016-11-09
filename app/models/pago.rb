class Pago < ApplicationRecord
	has_many :atravesdes
	has_many :realizas
	before_create :set_id_pago
	def set_id_pago
	  last_id_pago = Pago.maximum(:id_pago)
	  self.id_pago = last_id_pago.to_i + 1
	end
end
