BtcApp::Application.routes.draw do
  devise_for :users

  root to: "welcome#index"
  resources :donors
  resources :recipients
  resources :pres
  resources :abouts
  namespace :admin do
    resources :donors
    resources :recipients
    resources :pres
    resources :abouts
  end
end
