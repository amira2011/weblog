Rails.application.routes.draw do

  root to: "welcome#index"
  get 'welcome/home'

  get 'welcome/index'



  resources :wlogs do
    collection { post :import1 }
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
