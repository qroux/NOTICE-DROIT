Rails.application.routes.draw do
  root to: 'pages#home'

  resources :specialities, only: [:new, :create, :index, :show] do
    resources :chapters, only: [:show, :new, :create, :update, :edit] do
      resources :fiches, only: [:show, :new, :create, :update, :edit]
    end
  end
  resources :favorites, only: [:index, :new, :create]

  get '/my_courses', to: 'specialities#my_courses'

  # vérifier les routes de reviews
  # resources :reviews, only: [:index, :show, :new, :create]
  # manque my_courses pour le prof


  # get 'reviews/index'
  # get 'reviews/new'
  # get 'reviews/create'


  devise_for :teachers, path: 'teachers'
  devise_for :students, path: 'students'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
