Rails.application.routes.draw do
  resources :battles
  resources :stock_picks
  resources :stocks, only: [:index, :show]
  resources :users
  root :to => "welcome#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
