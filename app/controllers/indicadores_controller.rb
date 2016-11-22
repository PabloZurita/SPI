class IndicadoresController < ApplicationController
  def prueba_indicadores 
  	require 'net/http'
	url = 'http://www.acme.com/products/3322' # ACME boomerang
		resp = Net::HTTP.get_response(URI.parse(url))
		resp_text = resp.body
	
  end
end
