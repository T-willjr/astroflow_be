Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create] do
      end
    end
  end
end
