AteneoBudgetWebsite::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "pages#index" 

  get "/schedule", to: "pages#schedule"
  get "/downloadable_forms", to: "downloadable_forms#index", as: :downloadable_forms
  get "/guidelines", to: "guidelines#index", as: :guidelines

  resources :uploaded_forms, only: [:new, :create]
end
