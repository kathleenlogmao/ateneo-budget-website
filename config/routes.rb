AteneoBudgetWebsite::Application.routes.draw do
  root to: "pages#index" 

  get "/schedule", to: "pages#schedule"
end
