Rails.application.routes.draw do

  root to: 'groups#new'
  
  devise_for :users
  resources :groups do
    resources :contents do
    end
  end
end