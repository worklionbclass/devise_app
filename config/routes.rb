Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  get 'posts/index'
  get 'posts/new'
  post 'posts/create'
  get 'posts/show/:id' => "posts#show"
  get 'posts/edit/:id' => "posts#edit"
  post 'posts/update/:id' => "posts#update"
  get 'posts/destroy/:id' => "posts#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
