OldPhotos::Application.routes.draw do
  resources :members

  resources :comments

  resources :users

  resources :organizations
  resources :photos
end
