Iwissen::Application.routes.draw do

  # resources :courses do
  #   resources :lessons
  # end

  get '/courses' => 'courses#index', :as => 'courses'

  post '/courses' => 'courses#create'
  get '/courses/new' => 'courses#new', :as => 'new_course'

  get '/courses/:course_title/edit' => 'courses#edit', :as => 'edit_course'
  put '/courses/:course_title' => 'courses#update', :as => 'course'

  get '/courses/:course_title' => 'courses#show', :as => 'show_course'
  delete '/courses/:course_title' => 'courses#destroy', :as => 'delete_course'


  match '/' => 'static_pages#home'
  match '/help' => 'static_pages#help'
  match '/about' => 'static_pages#about'

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