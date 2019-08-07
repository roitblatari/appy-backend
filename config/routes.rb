Rails.application.routes.draw do

  get 'api/v1/get_current_user', to: 'api/v1/sessions#get_current_user'
  post '/api/v1/login', to: 'api/v1/sessions#create'
  namespace :api do
    namespace :v1 do 
      resources :users
      resources :deeds
      # resources :sessions
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
