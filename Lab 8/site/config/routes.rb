Rails.application.routes.draw do
  get 'main/index'
  get 'get_twins', to: 'main#results'

  root 'main#index'
end
