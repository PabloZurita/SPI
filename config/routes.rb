Rails.application.routes.draw do
  resources :indicadoresacumulados
  resources :indicadoresdiarios
  resources :respuesta
  resources :encuesta
  resources :motivos
  resources :pregunta
  resources :pagos
  resources :mdps
  resources :lineas
  resources :contratos
  resources :fijomovils
  resources :segmentos
  resources :clientes
  get 'welcome/index'
  devise_for :users
  root 'welcome#index'
  # For details on the DSL available within this file, see 	
end