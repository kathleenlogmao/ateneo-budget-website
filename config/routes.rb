AteneoBudgetWebsite::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "pages#index" 

  get "/schedule", to: "pages#schedule"
  get "/downloadable_form", to: "downloadable_forms#index", as: :downloadable_form
  get "/guidelines", to: "guidelines#index", as: :guidelines
  get "/upload_forms", to: "pages#upload_forms"
end
