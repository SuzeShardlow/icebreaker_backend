Rails.application.routes.draw do

  resources :events
  scope :api do
    # resources :posts
    resources :users
    resources :groups
    post "/register", to: "authentications#register"
    post "/login", to: "authentications#login"
  end
end
