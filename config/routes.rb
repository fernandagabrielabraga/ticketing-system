Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  controller :pages do
    get :qr_code_generator
    get :qr_code_download
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
