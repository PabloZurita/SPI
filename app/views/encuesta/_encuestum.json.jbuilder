json.extract! encuestum, :id, :id_encuesta, :fecha_creacion_encuesta, :motivo_encuesta, :resuelto_encuesta, :linea_id, :pregunta_id, :created_at, :updated_at
json.url encuestum_url(encuestum, format: :json)