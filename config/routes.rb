Rails.application.routes.draw do
  get 'config/index'

  get 'graficos/index'

  get 'nube/index'

  get 'historico/index'

  #get 'cal_unoydos/prueba'

  #get 'indicadores/prueba_indicadores'

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
  resources :clientess
  resources :cal_unoydos
  resources :historico
  resources :nube
  resources :config
  resources :graficos
  #get 'welcome/index'
  devise_for :users
  root 'welcome#index'
  # For details on the DSL available within this file, see 	
end