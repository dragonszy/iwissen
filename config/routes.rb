Iwissen::Application.routes.draw do

  resources :courses do
    resources :lessons
  end

  match '/' => 'static_pages#home'
  match '/help' => 'static_pages#help'
  match '/about' => 'static_pages#about'

  authenticated :user do
    root :to => 'static_pages#home'
  end

  root :to => 'static_pages#home'
  devise_for :users
  resources :users
end