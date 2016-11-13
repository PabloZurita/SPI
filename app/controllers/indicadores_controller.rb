class IndicadoresController < ApplicationController
  def prueba_indicadores 
	$saludo_2 = Cliente.all();
	$i = 0
	$cantidad = $saludo_2.length();
	puts "Cantidad = #{$cantidad}"
	#Falta recuperar la fecha de hoy#

	@saludo_1 = Cliente.find_by_mail_cliente("gioconda134@hotmail.com");
	
	#puts "Hola #{@saludo_1.mail_cliente}"
	$aux = 0
	while $i < $cantidad  do
   		$i +=1
		$aux = $saludo_2.find_by_id_cliente($i).id_cliente + $aux
		puts " auxiliar #{$aux}"
	end 
  end
end
