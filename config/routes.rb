Rails.application.routes.draw do
  get 'landing/show'
  root 'posts#index'
  get '/contact', to: 'static#contact'
  resources :posts
  resources :authors
  get '/team',  to: 'authors#index'
  get '/:user_entry', to: 'landing#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
