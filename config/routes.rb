Rails.application.routes.draw do
  resources :resumes

  resource :users, only: [:create] do
    get :sign_up
    get :sign_in
    # 單數的 resource 沒有 id ，所以可以不用分 member 或 collection
  end

  resources :sessions, only: [:create, :destroy]

  root "resumes#index"
  # get "/", to: "resumes#index"
end