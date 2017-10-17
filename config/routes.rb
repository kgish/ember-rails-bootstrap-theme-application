Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }
  mount_ember_app :frontend, to: "/"
  scope path: '/api' do
    scope path: '/v1' do
      # your routes will go here
    end
  end
end
