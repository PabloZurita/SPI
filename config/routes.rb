Rails.application.routes.draw do
  resources :realizas
  resources :atravesdes
  resources :pagos
  resources :mdps
  resources :contesta
  resources :contienes
  resources :encuesta
  resources :pregunta
  resources :es
  resources :fijomovils
  resources :es2s
  resources :contratos
  resources :separas
  resources :segmentos
  resources :contrata
  resources :lineas
  resources :clientes
  get 'welcome/index'
  devise_for :users
  root 'welcome#index'
  # For details on the DSL available within this file, see 	
end