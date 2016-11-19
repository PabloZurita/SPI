desc 'consulta web service'
task consulta_web_service: :environment do
  # ... set options if any
  Indicadores_controller.prueba_indicadores.deliver!
end