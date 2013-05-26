Iwissen::Application.routes.draw do
  get "static_pages/home"

  get "static_pages/about"

  get "static_pages/help"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end