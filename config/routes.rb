Rails.application.routes.draw do
  root 'static#home'
  get '/team',  to: 'static#team'
  get '/contact', to: 'static#contact'
  resources :posts
  resources :authors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
