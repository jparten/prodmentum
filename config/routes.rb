Rails.application.routes.draw do
  devise_for :users
  post '/rate' => 'rater#create', :as => 'rate'
  root 'static_pages#home'
  get 'static_pages/home'
  resources :ideas 
  resources :products
  resources :features
  resources :competitors

end
