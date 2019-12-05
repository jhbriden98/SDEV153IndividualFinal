Rails.application.routes.draw do
  resources :sdev153s
  resources :sdev140s
  resources :sdev120s
  resources :homes
  resources :abouts
  root 'homes#index'
end
