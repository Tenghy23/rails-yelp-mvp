Rails.application.routes.draw do
  resources :restaurants, only: [ :index, :new, :show, :create ] do
    resources :reviews, only: [ :new, :create ] # 'only' is meant for specific actions that you want to use
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end
