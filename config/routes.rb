Iwissen::Application.routes.draw do

  # show courses
  get '/courses' => 'courses#index', :as => 'courses'
  # create a course
  post '/courses' => 'courses#create'
  get '/courses/new' => 'courses#new', :as => 'new_course'
  # update a course
  get '/courses/:course_title/edit' => 'courses#edit', :as => 'edit_course'
  put '/courses/:course_title' => 'courses#update', :as => 'course'
  # show a course
  get '/courses/:course_title' => 'courses#show', :as => 'course'
  # delete a course
  delete '/courses/:course_title' => 'courses#destroy'

  match '/courses/:course_title/:lesson_name' => 'courses#show'
  # create a lesson
  post '/courses/:course_title' => 'lessons#create', :as => 'lesson'
  get '/courses/:course_title/new' => 'lessons#new'
  # update a lesson
  # get '/courses/:course_title/:lesson_id/edit' => 'lessons#edit', :as => 'edit_lesson'
  # put '/courses/:course_title/:lesson_id' => 'lessons#update', :as => 'lesson'
  # delete a lesson
  # delete '/courses/:course_title/:lesson_id' => 'lessons#destroy', :as => 'delete_lesson'




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