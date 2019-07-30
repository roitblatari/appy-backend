Rails.application.routes.draw do

  get 'sessions/new'
  namespace :api do
    namespace :v1 do 
      resources :users
      resources :deeds
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
