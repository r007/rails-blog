Rails.application.routes.draw do
  devise_for :users
  concern :paginatable do
    get '(page/:page)', :action => :index, :on => :collection, :as => ''
  end

  resources :posts, :concerns => :paginatable
  resources :posts do
    resources :comments
  end
  root "posts#index"

  get '/about', to: 'pages#about'
end
