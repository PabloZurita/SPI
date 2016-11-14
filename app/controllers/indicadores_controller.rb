class IndicadoresController < ApplicationController
  def index 

	puts "Cantidad = #{$cantidad}"

	#### Calculando indicadores ####
	## aqui get fecha de lo que se desea actualizar en relacion a los indicadores
	$fecha = "2016-10-11";
	#@enc_deldia = Encuestum.find_by_all_fecha_creacion_encuesta($fecha);
	
	@enc_deldia = Encuestum.where(fecha_creacion_encuesta: '2016-10-11')
	$cantidad = @enc_deldia.length();
	#puts"CANTIDAD #{$cantidad}"
	$aux = 0
	$i = 0
	resolucion_positiva = 0;
	resolucion_negativa = 0;
	while $i < $cantidad  do
   		if @enc_deldia[$i].resuelto_encuesta == 1
			resolucion_positiva += 1;
		else
			resolucion_negativa += 1;
		end
   		$i+=1
	end
	puts"negatividad #{resolucion_negativa}, positividad #{resolucion_positiva}"


  end
end
