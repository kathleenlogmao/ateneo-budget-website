AteneoBudgetWebsite::Application.routes.draw do
  root to: "pages#index" 

  get "/schedule", to: "pages#schedule"
  get "/downloadable_form", to: "pages#downloadable_form"
  get "/guidelines", to: "pages#guidelines"
  get "/upload_forms", to: "pages#upload_forms"
end
