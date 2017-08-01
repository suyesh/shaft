Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :boards do
        resources :lists do
          resources :tasks
        end
      end
    end
  end
end
