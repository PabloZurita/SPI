Rails.application.routes.draw do
  get 'parcial_calculos/listar'

  resources :pagos
  resources :mdps
  resources :encuesta
  resources :pregunta
  resources :fijomovils
  resources :contratos
  resources :segmentos
  resources :lineas
  resources :clientes
  get 'welcome/index'
  devise_for :users
  root 'welcome#index'
  # For details on the DSL available within this file, see 	
end