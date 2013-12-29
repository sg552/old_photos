OldPhotos::Application.routes.draw do
  root :to => 'photos#index'
  resources :members
  resources :comments
  resources :users
  resources :organizations
  resources :photos
end
