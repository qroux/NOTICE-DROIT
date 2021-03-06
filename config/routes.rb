Rails.application.routes.draw do
  # post 'orders/create', to: 'orders#create', as: 'orders/create'
  # get 'payments/create', to: 'payments#create'
  # get 'payments/new', to: 'payments#new'
  root to: 'pages#home'

  resources :specialities, only: [:new, :create, :index, :show] do
    resources :chapters, only: [:show, :new, :create, :update, :edit] do
      resources :fiches, only: [:show, :new, :create, :update, :edit]
    end
  end

  resources :orders, only: [:index, :show, :new, :create] do
    resources :payments, only: [:new, :create]
  end



  get '/my_courses', to: 'specialities#my_courses'
  get '/courses', to: 'orders#courses'


  # vérifier les routes de reviews
  # resources :reviews, only: [:index, :show, :new, :create]
  # manque my_courses pour le prof


  # get 'reviews/index'
  # get 'reviews/new'
  # get 'reviews/create'
  get '/about', to: 'pages#about'
  get '/abonnements', to: 'pages#abonnements'

  devise_for :teachers, path: 'teachers'
  devise_for :students, path: 'students'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
