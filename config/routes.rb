Rails.application.routes.draw do
  root "pages#home"
  get "/about", to: "pages#about"
  resources :students do
    resources :posts
  end
end
