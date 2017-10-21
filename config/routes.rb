Rails.application.routes.draw do
  #devise_for :users
  mount_ember_app :frontend, to: "/"
  namespace :api do
    namespace :v1 do
      resources :sessions, only: [:create, :destroy]
    end
  end
end
