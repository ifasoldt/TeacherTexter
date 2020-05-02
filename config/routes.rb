Rails.application.routes.draw do
  root 'sessions#new'
  resources :sessions, only: [:new, :create] do
    get :logout, on: :collection
  end
  resources :text_templates do
    get :preview, on: :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
