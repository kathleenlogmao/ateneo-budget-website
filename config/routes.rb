AteneoBudgetWebsite::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "pages#index" 

  get "/schedule", to: "pages#schedule"
  get "/downloadable_forms", to: "downloadable_forms#index", as: :downloadable_forms
  get "/guidelines", to: "guidelines#index", as: :guidelines
  get "/special/guidelines", to: "guidelines#special", as: :special_guidelines
  get "/special/downloadable_forms", to: "guidelines#special_downloadable_forms", as: :special_downloadable_forms

  resources :uploaded_forms, only: [:new, :create]
end
