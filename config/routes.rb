Rails.application.routes.draw do
  # Rota para a página inicial (home)
  root 'pages#home'

  # Rota para a página de resultados
  get 'resultados', to: 'pages#resultados'
  get 'resultados/:id', to: 'pages#detalhes', as: 'resultado_detalhes'

  # Rota para a consulta de CNPJ
  post 'consulta', to: 'pages#consulta'

  # Rota para a nova página de consultas
  get 'consultas', to: 'pages#consultas'
  post 'consultas/resultados', to: 'pages#consultar_dados', as: 'consultar_dados'
end
