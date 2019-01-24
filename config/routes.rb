Rails.application.routes.draw do
  root to: "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create]
    resources :reviews, only: [:create]
  end
  resources :doses, only: [:destroy] #why do we put out of the rest ?!

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
