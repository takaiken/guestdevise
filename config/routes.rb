Rails.application.routes.draw do
  
  get 'homes/index'
  get 'homes/show'
  post '/homes/guest_sign_in', to: 'homes#guest_sign_in'
  devise_for :users
  resources :users

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end

    root "homes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
