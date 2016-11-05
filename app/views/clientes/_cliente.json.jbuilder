json.extract! cliente, :id, :id_cliente, :rut_cliente, :nombre_cliente, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)