BasicStarterTemplate::Application.routes.draw do
  resources :startup_profiles do
    member do
      get :join
      get :leave
    end
  end

  resources :user_profiles

  devise_for :users
  root 'home#index'
end
