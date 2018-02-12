Rails.application.routes.draw do
  get 'homes/new'
  get 'homes/index'

  resources :homes

  root 'homes#new'

end
